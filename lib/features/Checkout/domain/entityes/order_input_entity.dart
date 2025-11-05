import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:fruitapp/core/utliz/enum/order_status_enum.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_entity.dart';


class OrderInputEntity extends ChangeNotifier{

  final CartEntity cartEntity;
 bool? isPayWithCash;
 AddressEntity ?addressEntity;
String ? paymentMethod;
 OrderStatusEnum? orderStatus;
String ? appBarTitle;
  OrderInputEntity({ this.orderStatus,this.appBarTitle, required this.cartEntity, this.paymentMethod, this.isPayWithCash,this.addressEntity});

 num calculateTotalPriceAfterShippingAndShippinCost()
{

 num totalPrice=(cartEntity.calculateTotalPrice()+culculateShipping())-calculateShippinDiscount();
 log('total price is ${totalPrice.toString()}');
return totalPrice;
}
 num culculateShipping()
{
if(isPayWithCash ==true)
{
  return 40;
}
else{ return 0;}
}
num calculateShippinDiscount()
{
  return 0;
}

void updateAppBar(String appBar)
{
  appBarTitle=appBar;
  notifyListeners();
}
}