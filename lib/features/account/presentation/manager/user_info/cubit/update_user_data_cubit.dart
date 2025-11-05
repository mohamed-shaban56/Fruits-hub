import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/update_user_data_repo.dart';

part 'update_user_data_state.dart';

class UpdateUserDataCubit extends Cubit<UpdateUserDataState> {
  UpdateUserDataCubit({required this.updateUserDataRepo}) : super(UpdateUserDataIntial());
  UpdateUserDataRepo updateUserDataRepo;

 Future<void> saveUserInfo({required UpdateUserDataEntity updateUserData})async
 {
  emit(UpdateUserDataLoading());
 var result=await updateUserDataRepo.updateUserData(updateUserData: updateUserData);
 result.fold((failure){
  log(failure.toString());
  emit(UpdateUserDataFailure());
  }, (dataUpdated){
    log('success to update user data');
  emit(UpdateUserDataSuccess());
 });
 }

}

