import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';

abstract class GetOrderRepo {

  Stream<Either<Failure, List<OrderEntity>>>getOrder();
}