import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';

abstract class AuthService {
    Future<User?> createUserWithEmailAndPassword({ required String email,required String password});
      Future<User?> signInUserWithEmailAndPassword({required String email, required String password});
      Future<User?> signInWithGoogle();
       Future<User?> signInWithGitHub();
      //  signInWithFacebook();
    Future<void> deleteUser();
    Future<void >userSingOut();
    Future<void>updateEmailAndPassword({required UpdateUserDataEntity updateUserData});
}