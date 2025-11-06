

import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_product_entity.dart';

class OrderEntity{

 final String ?uid;
  final double totalPrice;
  final dynamic orderId;
  final AddressEntity addressModel;
final List<OrderProductEntity>orderProduct;
final String paymentMethod;
final String? orderStatus;
OrderEntity({this.orderId, this.orderStatus ,this.uid,required this.totalPrice,required this.addressModel,required this.paymentMethod,required this.orderProduct});







}
