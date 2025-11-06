import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

class Details {
  final String subtotal;
  final String shipping;
  final int shippingDescount;

  Details({required this.subtotal, required this.shipping, required this.shippingDescount});
factory Details.fromEntity(OrderInputEntity orderEntity)
{
  return Details(
  subtotal: orderEntity.cartEntity.calculateTotalPrice().toString(), 
  shipping: orderEntity.culculateShipping().toString(),
  shippingDescount: orderEntity.calculateShippinDiscount().toInt());
}
toJson()=>{
  "subtotal": subtotal,
   "shipping": shipping,
   "shipping_discount": shippingDescount
};
}