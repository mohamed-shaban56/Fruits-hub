
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';

import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/cart/presentation/widget/product_name_and_quantity.dart';
import 'package:fruitapp/features/cart/presentation/widget/quatity_controll_widget.dart';

class CartViewItemProductDetails extends StatelessWidget {
  const CartViewItemProductDetails({
    super.key, required this.cartProduct
  });
final CartItemEntity cartProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductNameAndQuantaty(
          onTap: () {
            context.read<CartCubit>().removeProduct(cartProduct);
          },
          productName: cartProduct.productEntity.productName, productUnit: cartProduct.productEntity.unit.toString(),),
        QuantityControllWidget(cartProduct: cartProduct)
    
      ],
    );
  }
}
