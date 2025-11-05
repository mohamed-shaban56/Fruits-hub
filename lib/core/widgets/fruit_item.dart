

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/widgets/custom_caced_network_image.dart';
import 'package:fruitapp/core/widgets/fruit_item_favorite_icon_favorite_buttom.dart';
import 'package:fruitapp/core/widgets/fruit_item_list_tail.dart';

import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;
 

  @override
  Widget build(BuildContext context) {
    var isA = isArabic(context);
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF3F5F7), borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.only(
            left: isA ? 8.5 : 7.5, right: isA ? 7.5 : 8.5, bottom: 16, top: 17),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: CustomCachedNetworkImage(
                  imageUrl: product.imageUrl,
                )),
                Spacer(),
                FruitItemListTail( product: product,),
              ],
            ),
            Positioned(top: -10, right: 0, child: FruitItemFavoriteButtom(product: product,)),
          ],
        ),
      ),
    );
  }
}
