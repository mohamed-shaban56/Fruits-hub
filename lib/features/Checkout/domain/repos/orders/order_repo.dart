import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

abstract class OrderRepo {

  Future<Either<Failure,void>> addOrder(OrderInputEntity orderEntity);
}