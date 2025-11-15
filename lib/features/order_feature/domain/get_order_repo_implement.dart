

import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';

import 'package:fruitapp/features/Checkout/data/modles/order_model.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';

class GetOrderRepoImplement extends GetOrderRepo {
  final DatabaseService databaseService;

  GetOrderRepoImplement({required this.databaseService});
  
  @override
  Stream<List<OrderEntity>>getOrder() {

 final orderResult=  databaseService.streamData(path: BackEndEndpoint.orderPath);


 return orderResult.map<List<OrderEntity>>(
  (result) => 
    result.map<OrderEntity>((e)=>OrderModel.fromjson(e).toEntity()).toList()

).handleError((error)=>throw Exception(error));



 
  }
}
