
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';

abstract class GetOrderRepo {

  Stream< List<OrderEntity>>getOrder();
  
}