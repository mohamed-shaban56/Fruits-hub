import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit(this.authRepo) : super(SingUpInitial());
  AuthRepo authRepo;
  Future<void > createUserWithEmailAndPassword({required String name,required String password ,required String email})async{
    emit(SingUpLoading());
  var result= await authRepo.createUserWithEmailAndPassword(email: email, password: password, name: name);
  result.fold((failure)=>emit(SingUpFailure(error: failure.error)), (user)=>emit(SingUpSuccess(user: user)));
  }
}
