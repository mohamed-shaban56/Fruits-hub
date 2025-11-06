import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/Checkout/data/modles/order_model.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/domain/repos/orders/order_repo.dart';

class OrderRepoImplement implements OrderRepo{
  DatabaseService databaseService;
  OrderRepoImplement(this.databaseService);
  @override
  Future<Either<Failure, void>> addOrder(OrderInputEntity orderEntity) async{
try{
  OrderModel orderModel=OrderModel.fromEntity(orderEntity);
 await databaseService.saveData(BackEndEndpoint.orderPath, orderModel.toJson(), orderModel.orderId);
return right(null);

}catch (e)
{
return left(Failure(e.toString()));
}
  }
}