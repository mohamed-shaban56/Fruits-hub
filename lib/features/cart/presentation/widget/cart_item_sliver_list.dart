
import 'package:flutter/material.dart';

import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_view_item.dart';
import 'package:fruitapp/features/cart/presentation/widget/custom_divider.dart';

class CartItemSliverList extends StatelessWidget {
  const CartItemSliverList({
    super.key, required this.cartProductList,
  });
final List<CartItemEntity>cartProductList;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartProductList.length,
      itemBuilder:(context,index)=>CartViewItem(cartItem: cartProductList[index]),
       separatorBuilder:(context,index)=> CustomDivider());
  }
}

