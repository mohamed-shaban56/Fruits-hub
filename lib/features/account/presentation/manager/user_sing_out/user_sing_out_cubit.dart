import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';

part 'user_sing_out_state.dart';

class UserSignOutCubit extends Cubit<UserSingOutState> {
  UserSignOutCubit({required this.authRepo}) : super(UserSingOutInitial());
AuthRepo authRepo;

 Future<void> userSingOut ()async{
emit((UserSingOutLoading()));
  log("Cubit got result: ");

var result=await authRepo.userSingOut();
  log("Cubit got result: $result");
result.fold((failure)=>emit(UserSingOutFailure(failure.error)), (userdeleted)=> emit(UserSingOutSuccess())
  );
 }
}
