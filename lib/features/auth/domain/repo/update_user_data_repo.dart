import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';

abstract class UpdateUserDataRepo {

  Future<Either<Failure,void>>updateUserData({required UpdateUserDataEntity updateUserData});
}