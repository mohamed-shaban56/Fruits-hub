import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
   AuthRepo authRepo;
 Future<void> signInWithEmailAndPassword({required String password ,required String email})async{
emit(SignInLoading());
  var result= await authRepo.signInUserWithEmailAndPassword(email: email, password: password);
  result.fold((failure)=>emit(SignInFaulure(error: failure.error)), (user)=>emit(SignInSuccess(user: user)));
  }
 Future<void> singInwithFaceBook()async{
emit(SignInLoading());
  var result= await authRepo.signInWithFacebook();
  result.fold((failure)=>emit(SignInFaulure(error: failure.error)), (user)=>emit(SignInSuccess(user: user)));
  }
 Future<void> singInWithGitHub()async{
emit(SignInLoading());
  var result= await authRepo.signInWithGitHub();
  result.fold((failure)=>emit(SignInFaulure(error: failure.error)), (user)=>emit(SignInSuccess(user: user)));
  }
 Future<void> singinWithGoogle()async{
    emit(SignInLoading());
  var result= await authRepo.signInWithGoogle();
  result.fold((failure)=>emit(SignInFaulure(error: failure.error)), (user)=>emit(SignInSuccess(user: user)));
  }
}

 