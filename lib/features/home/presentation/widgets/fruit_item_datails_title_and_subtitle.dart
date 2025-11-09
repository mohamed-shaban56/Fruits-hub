

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitItemDetailsTitleAndSubTitL extends StatelessWidget {
  const FruitItemDetailsTitleAndSubTitL({
    super.key,
    required this.product,
    required this.isA,
  });

  final ProductEntity product;
  final bool isA;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.productName,
          style: AppStyle.bold16(),
        ),
        Text.rich(
          textDirection: isA ? TextDirection.rtl : TextDirection.ltr,
          TextSpan(children: [
            TextSpan(
                text: product.productPrice.toString(),
                style: AppStyle.semiBold13().copyWith(
                    color: AppColor.lightSeconodColor)),
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
