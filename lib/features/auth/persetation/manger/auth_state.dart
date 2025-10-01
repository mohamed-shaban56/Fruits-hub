
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

abstract class AuthState {}
class AuthStateIntial extends AuthState{}
class AuthStateLoadig extends AuthState{}
class AuthStateSuccess extends AuthState{
  final UserEntity user;
  AuthStateSuccess(this.user);
}
class AuthStateFailuer extends AuthState{
  final String error;
  AuthStateFailuer(this.error);
}