import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitapp/core/utliz/services/auth_service.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/widgets/auth_exception.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/auth/data/models/user_model.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';



class AuthRepoImplement extends  AuthRepo {
  final AuthService authService;
  final DatabaseService databaseService; 
  AuthRepoImplement({required this.authService,required this.databaseService});
  
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({required String email,required String password,required String name}) async{
    User? user;
   try {
   user=   await  authService.createUserWithEmailAndPassword(email: email, password: password);
var userEntity=UserEntity(name: name, email: email, uid:user?.uid );
  await saveUserData(user: userEntity, uid: userEntity.uid!);

return right(userEntity);
    
    }on AuthException catch(e)
    {
        return left(ServerFailure(e.toString()));
    }
    
     catch(e)
    {
      if(user !=null)
      {
       await authService.deleteUser();
      }
       log("Exception in AuthRepoImplement.createUserWithEmailAndPassword $e");
      return left(ServerFailure("unExcepected error ,please try later"));
    }
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInUserWithEmailAndPassword({required String email, required String password})async {
   try{
    var user=await    authService.signInUserWithEmailAndPassword(email: email, password: password);
UserEntity userEntity= await getUserData(uid: user!.uid);
   saveUserDataLocal(user: userEntity);
return right(userEntity);
   } on AuthException  catch(e)
   {
    return left(ServerFailure(e.toString()));
   } catch(e)
   {
    return left(ServerFailure(e.toString()));
   }
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle()async {
    try{
      var user=await authService.signInWithGoogle();
   var userEntity=UserModel.fromFirebaseUser(user);
await saveUserData(user: userEntity, uid: userEntity.uid!);
await getUserData(uid: user!.uid);
return right(userEntity);

    }catch(e)
    {
      
      return left(ServerFailure(e.toString()));

    }
 
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithGitHub()async {
 try{
var user=await  authService.signInWithGitHub();
var userEntity=UserModel.fromFirebaseUser(user);
await saveUserData(user: userEntity, uid: userEntity.uid!);
await getUserData(uid: user!.uid);
return right(userEntity);
 }catch(e)
 {
  return left(ServerFailure(e.toString()));
 }
  }
  
  // @override
//   Future<Either<Failure, UserEntity>> signInWithFacebook()async {
//  try{
// var user=await  authService.signInWithFacebook();
// var userEntity=UserModel.fromFirebaseUser(user);
// await saveUserData(user: userEntity, uid: userEntity.uid!);
// await getUserData(uid: user!.uid);
// return right(userEntity);
//  }catch (e)
//  {
//   return left(ServerFailure(e.toString()));
//  }
//   }
  
  @override
  Future saveUserData({required UserEntity user,required String uid}) async{
    try{
  await databaseService.saveData(BackEndEndpoint.path, user.toMap(),uid);
    }catch(e)
    {
       
    log('exception in authRepoImplementation $e');
    }

  }
  
  @override
  Future saveUserDataLocal({required UserEntity user}) async{
      var userData= jsonEncode(user.toMap());
 SharedPrefrenceSinglton.setUserData(userData);
  }
  
  @override
  Future<UserEntity> getUserData({required String uid}) async{
  var  jsonData= await databaseService.getData(path: BackEndEndpoint.getUserData,documentID: uid);
     return   UserModel.fromJson(jsonData);
 
  }
  
  @override
  Future<Either<Failure,void>> userSingOut() async{
  
   try{
    authService.userSingOut();
  
        
   return right(null);
       
   }catch (e)
   {
       log("user sign out faild :${e.toString()}");
      return left(Failure(e.toString()));
   }
  }

  
}
