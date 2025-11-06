import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';

abstract class UpdateOrderStatusRepo {

  Future<Either<Failure,void>>updateOrderStatus({required String orderid, required Map<String,dynamic> status});
}