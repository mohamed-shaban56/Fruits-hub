part of 'cart_cubit_total_price.dart';

abstract class CartCubitTotalPriceState  {}

 class CartCubitTotalPriceIntial extends CartCubitTotalPriceState {}
 class tempstate extends CartCubitTotalPriceState {
  final num totalPrice;
  tempstate(this.totalPrice);

}