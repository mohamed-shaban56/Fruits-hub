part of 'sing_up_cubit.dart';

@immutable
sealed class SingUpState {}

final class SingUpInitial extends SingUpState {}
final class SingUpLoading extends SingUpState {}
final class SingUpSuccess extends SingUpState {
 final UserEntity user;

  SingUpSuccess({required this.user});
}
final class SingUpFailure extends SingUpState {
  final String error;
  SingUpFailure({required this.error});
}