
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_item_sliver_list.dart';

class CartItemSliverlistBlocBuilder extends StatelessWidget {
  const CartItemSliverlistBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if(state is AddCartItem)
        {
       return CartItemSliverList(cartProductList: state.cartItems);
        }
        return SliverToBoxAdapter(child: SizedBox());
        
      },
    );
  }
}
