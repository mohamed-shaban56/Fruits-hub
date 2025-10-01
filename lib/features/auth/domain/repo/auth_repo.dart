import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/widgets/failure.dart';

import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
Future<Either<Failure,UserEntity> > createUserWithEmailAndPassword({required String email,required String password});
}