// import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fruitapp/core/widgets/auth_exception.dart';
// import 'package:fruitapp/generated/l10n.dart';

// class FirebaseService {

//   Future<User?> createUserWithEmailAndPassword({ required String email,required String password})async{
// try {
//   final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: email,
//     password: password,
//   );
//   return credential.user;
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'weak-password') {
//         throw AuthException(S.current.weakPassword)    ;        
//   } else if (e.code == 'email-already-in-use') {
//     throw AuthException(S.current.emailAlreadyInUse)    ;        
//   }else if (e.code =="network-request-failed")
//   {
//     throw AuthException(S.current.noInternet);
//   }
  
//   else{
//      log("Exception in FirebaseServices.createUserWithEmailAndPassword code ${e.code}");
//             throw AuthException(S.current.unexpectedError)    ;   
//   }
// } catch (e) {
//   log("Exception in FirebaseServices.createUserWithEmailAndPassword $e");
//  throw AuthException(S.current.unexpectedError)    ;   
// }
//   }
  
// }