import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';


part 'cart_cubit_total_price_state.dart';

class CartCubitTotalPrice extends Cubit<CartCubitTotalPriceState> {
  CartCubitTotalPrice() : super(CartCubitTotalPriceIntial());
  void calcltateTotalPrice(num totalPrice)
  {
    log('CartCubitTotalPrice total price is :$totalPrice');
    emit(tempstate(totalPrice));
  }
}
