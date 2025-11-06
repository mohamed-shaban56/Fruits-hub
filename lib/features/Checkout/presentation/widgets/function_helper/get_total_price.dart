import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

String getReviewTotalPrice(OrderInputEntity orderEntity) {
 num Price = orderEntity.cartEntity.calculateTotalPrice();
 num totalPrice=Price+40;
 return totalPrice.toString();
  }