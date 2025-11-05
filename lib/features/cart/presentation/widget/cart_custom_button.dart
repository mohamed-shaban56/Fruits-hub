

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_entity.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit_total_price/cart_cubit_total_price.dart';
import 'package:fruitapp/features/cart/presentation/widget/custom_buttom_bloc_builder.dart';


class CartCustomButton extends StatelessWidget {
  const CartCustomButton({super.key, required this.cartEntity});
  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
     final cartCubit = context.read<CartCubit>();
        final hasItems = cartCubit.cartEntity.cartItems.isNotEmpty;
    return BlocBuilder<CartCubitTotalPrice, CartCubitTotalPriceState>(
      builder: (context, state) {
       if(state is CalclateTotalPriceState)
       {

return CustomButtomBlocBuilder(hasItems: hasItems, cartCubit: cartCubit, totalPrice: state.totalPrice);
       }
    return   CustomButtomBlocBuilder(hasItems: hasItems, cartCubit: cartCubit, totalPrice: cartEntity.calculateTotalPrice());
      },
    
    );
       

    
  }
}
