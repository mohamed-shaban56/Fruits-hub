import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:fruitapp/features/auth/persetation/manger/auth_event.dart';
import 'package:fruitapp/features/auth/persetation/manger/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  AuthRepo authRepo;
  AuthBloc(this.authRepo) : super(AuthStateIntial()) {
    on<SignUpEvet>((event, emit)async {
      
      emit(AuthStateLoadig());
       var user= await authRepo.createUserWithEmailAndPassword(email: event.email, password: event.password);
       user.fold((failure)=>emit(AuthStateFailuer(failure.error)), (user)=>emit(AuthStateSuccess(user)));
    });
  }
}