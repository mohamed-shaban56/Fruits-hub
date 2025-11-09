import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';

import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
Future<Either<Failure,UserEntity> > createUserWithEmailAndPassword({required String email,required String password,required String name});
Future<Either<Failure,UserEntity> > signInUserWithEmailAndPassword({required String email,required String password});
Future<Either<Failure,UserEntity> > signInWithGoogle();
Future<Either<Failure,UserEntity> > signInWithGitHub();
// Future<Either<Failure,UserEntity> > signInWithFacebook();
Future saveUserData({required UserEntity user,required String uid});
Future<UserEntity> getUserData({required String uid});
Future saveUserDataLocal({required UserEntity user});
Future<Either<Failure,void>>userSingOut();
}