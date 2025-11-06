class AuthException implements Exception {
  final String error;
  AuthException(this.error);
@override
    String toString ()=> error;
   
  
}