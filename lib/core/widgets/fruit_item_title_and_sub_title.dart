
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitItemTitleAndSubTitle extends StatelessWidget {
  const FruitItemTitleAndSubTitle({
    super.key,
    required this.product,
  });

  final ProductEntity product;
 

  @override
  Widget build(BuildContext context) {
     final bool isA=isArabic(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
       product.productName,
        style: AppStyle.semiBold13(),
      ),
      Text.rich(
        textDirection: isA ? TextDirection.rtl : TextDirection.ltr,
        TextSpan(children: [
          TextSpan(
              text: product.productPrice.toString(),
              style: AppStyle.semiBold13().copyWith(
                  color: AppColor.lightSeconodColor,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: ' / ',
              style: TextStyle(color: AppColor.secondColor)),
          TextSpan(
              text: S.current.countaty,
              style: AppStyle.semiBold13()
                  .copyWith(color: AppColor.lightSeconodColor)),
        ]),
      ),
    
      ],
    );
  }
}
