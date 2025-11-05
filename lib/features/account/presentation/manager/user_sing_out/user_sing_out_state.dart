part of 'user_sing_out_cubit.dart';

sealed class UserSingOutState extends Equatable {
  const UserSingOutState();

  @override
  List<Object> get props => [];
}

final class UserSingOutInitial extends UserSingOutState {}
final class UserSingOutLoading extends UserSingOutState {}
final class UserSingOutFailure extends UserSingOutState {
  final String error;
 const UserSingOutFailure(this.error);
}
final class UserSingOutSuccess extends UserSingOutState {}