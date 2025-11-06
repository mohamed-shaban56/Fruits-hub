part of 'delete_cubit.dart';

@immutable
sealed class DeleteState {}

final class DeleteInitial extends DeleteState {}
final class DeleteLoading extends DeleteState {}
final class DeleteFialuer extends DeleteState {
  final String error;
  DeleteFialuer(this.error);
}
final class DeleteSuccess extends DeleteState {}
