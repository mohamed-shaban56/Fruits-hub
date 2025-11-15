
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/core/utliz/services/auth_service.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/widgets/auth_exception.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';

import 'package:fruitapp/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class FirebaseService implements AuthService {
final FirebaseAuth auth=FirebaseAuth.instance;

FirebaseService();
  @override
  Future<User?> createUserWithEmailAndPassword({ required String email,required String password})async{
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  return credential.user;
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
        throw AuthException(S.current.weakPassword)    ;        
  } else if (e.code == 'email-already-in-use') {
    throw AuthException(S.current.emailAlreadyInUse)    ;        
  }else if (e.code =="network-request-failed")
  {
    throw AuthException(S.current.noInternet);
  }
  
  else{
     log("Exception in FirebaseServices.createUserWithEmailAndPassword code ${e.code}");
            throw AuthException(S.current.unexpectedError)    ;   
  }
} catch (e) {
  log("Exception in FirebaseServices.createUserWithEmailAndPassword $e");
 throw AuthException(S.current.unexpectedError)    ;   
}
  }



  @override
  Future<User?> signInUserWithEmailAndPassword({required String email, required String password})async
  {
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
  return credential.user;
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
   throw AuthException(S.current.invalidCredentials);
  } else if (e.code == 'wrong-password') {
      throw AuthException(S.current.invalidCredentials);
  }else if (e.code =="network-request-failed"){
     throw AuthException(S.current.noInternet);
  }else{
    throw AuthException(S.current.unexpectedError);
  }
}catch (e)
{
  throw AuthException(S.current.unexpectedError);
}
  }

@override
  Future<User?> signInWithGoogle() async {


try{
// تهيئة GoogleSignIn إذا لم تفعلها
 
  await GoogleSignIn.instance.initialize(
    serverClientId: Constant.kserverClientId
  );

  // طلب تسجيل الدخول (authentication)
  final GoogleSignInAccount account = await GoogleSignIn.instance.authenticate();

final GoogleSignInAuthentication  googleAuth =  account.authentication;

 final credential = GoogleAuthProvider.credential(
   
    idToken: googleAuth.idToken,
  );
    UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(credential);
return userCredential.user;
 

}on GoogleSignInException   catch (e)
{
  if(e.code==GoogleSignInExceptionCode.canceled)
  {
  log('user cancel login with goole $e');
  return null;
  }
} catch(e)
{
  log('user cancel login with goole in general catch ${e.toString()}');
  
}
return null;

}

 @override
  Future<User?> signInWithGitHub() async {
    try {
      // إنشاء GitHub Provider
      final githubProvider = GithubAuthProvider();
      // تسجيل الدخول
      final UserCredential userCredential =
          await auth.signInWithProvider(githubProvider);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        log("الحساب مربوط بمزود آخر");
      } else {
        log(" FirebaseAuthException: ${e.message}");
      }
      return null;
    } catch (e) {
      log(" Unexpected error: $e");
      return null;
    }
  }

  @override
//   Future<User?> signInWithFacebook() async {
//   // Trigger the sign-in flow
//   final LoginResult loginResult = await FacebookAuth.instance.login();

//   // Create a credential from the access token
//   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

//   // Once signed in, return the UserCredential
//   return  (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user;
// }

  @override
  Future<void> deleteUser() async{
  var users = FirebaseFirestore.instance.collection(BackEndEndpoint.path);
  var uid=auth.currentUser?.uid;

await users.doc(uid).delete();

 
  }
  
  @override
  Future<void> userSingOut() async{

await FirebaseAuth.instance.signOut();


 
  }
  
  @override
 Future<void> updateEmailAndPassword({required UpdateUserDataEntity updateUserData}) async{
   var user= FirebaseAuth.instance.currentUser;

 try{

  if(user !=null )
 
  {
final credential=EmailAuthProvider.credential(email: user.email!, password: updateUserData.currentPassword);
  await user.reauthenticateWithCredential(credential);
   await user.verifyBeforeUpdateEmail(updateUserData.newEmail);
   await user.updatePassword(updateUserData.newPassword);
   await user.updateDisplayName(updateUserData.newName);
   if(user.emailVerified)
   {
 await userSingOut();
   }
 
  }
  else{
    log('لا يوجد حساب للمستخدم ');
  }
 }on FirebaseAuthException catch(e)
 {
  log('خطأ في المصادقة: ${e.code} - ${e.message}');
 }
  }
  
  

}
