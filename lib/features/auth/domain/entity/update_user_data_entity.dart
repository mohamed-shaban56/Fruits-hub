class UpdateUserDataEntity {

  final String newEmail;
  final String currentPassword;
   final String newPassword;
  final String confirmPassword;
  final String newName;

  UpdateUserDataEntity({required this.newPassword, required this.newEmail, required this.currentPassword, required this.confirmPassword, required this.newName});
}