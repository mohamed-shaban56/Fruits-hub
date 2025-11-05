import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/services/auth_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';
import 'package:fruitapp/features/auth/domain/repo/update_user_data_repo.dart';

class UpdateUserDataRepoImplement extends UpdateUserDataRepo{
  AuthService authService;
  UpdateUserDataRepoImplement({required this.authService});
  @override
  Future<Either<Failure, void>> updateUserData({required UpdateUserDataEntity updateUserData}) async{
try{
       await authService.updateEmailAndPassword(updateUserData: updateUserData);
       return right(null);
}catch (e)
{
return left(Failure(e.toString()));
}
  }
}