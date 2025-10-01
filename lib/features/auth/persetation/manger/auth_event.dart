abstract class AuthEvent {

}
class SignUpEvet extends AuthEvent{
  final String email,password;
  SignUpEvet({required this.email,required this.password});
}