import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitapp/core/services/fireBase_service.dart';
import 'package:fruitapp/core/widgets/auth_exception.dart';
import 'package:fruitapp/core/widgets/failure.dart';
import 'package:fruitapp/features/auth/data/models/user_model.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImplement extends  AuthRepo {
  final FirebaseService firebaseService;
  AuthRepoImplement(this.firebaseService);
  
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({required String email,required String password}) async{
   try {
   User? user=  await  firebaseService.createUserWithEmailAndPassword(email: email, password: password);
return right(UserModel.fromFirebaseUser(user));
    
    }on AuthException catch(e)
    {
        return left(ServerFailure(e.toString()));
    }
    
     catch(e)
    {
       log("Exception in AuthRepoImplement.createUserWithEmailAndPassword $e");
      return left(ServerFailure("unExcepected error ,please try later"));
    }
  }

  
}
