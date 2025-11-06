  

  import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

String getReviewPrice(OrderInputEntity orderEntity) => orderEntity.cartEntity.calculateTotalPrice().toString();