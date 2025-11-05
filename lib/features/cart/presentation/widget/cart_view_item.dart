
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_view_body_image.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_view_product_details.dart';


class CartViewItem extends StatelessWidget {
  const CartViewItem({
    super.key,required this.cartItem
  });
final CartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
       CartViewImageImage(imageUrl: cartItem.productEntity.imageUrl,),
        SizedBox(width: 17.w,),
         Expanded(  child: CartViewItemProductDetails(cartProduct:cartItem),),
          ],),
    );
  }
}
