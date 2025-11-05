part of 'update_user_data_cubit.dart';

sealed class UpdateUserDataState extends Equatable {
  const UpdateUserDataState();

  @override
  List<Object> get props => [];
}

final class UpdateUserDataIntial extends UpdateUserDataState {}
final class UpdateUserDataSuccess extends UpdateUserDataState {}
final class UpdateUserDataLoading extends UpdateUserDataState {}
final class UpdateUserDataFailure extends UpdateUserDataState {}
