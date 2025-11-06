part of 'cart_cubit_total_price.dart';

abstract class CartCubitTotalPriceState  {}

 class CartCubitTotalPriceIntial extends CartCubitTotalPriceState {}
 class CalclateTotalPriceState extends CartCubitTotalPriceState {
  final num totalPrice;
  CalclateTotalPriceState(this.totalPrice);

}