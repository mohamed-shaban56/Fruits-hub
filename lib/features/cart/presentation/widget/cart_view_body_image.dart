
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

import 'package:fruitapp/core/widgets/custom_caced_network_image.dart';


class CartViewImageImage extends StatelessWidget {
  const CartViewImageImage({
    super.key, required this.imageUrl,
  });
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 105.h,
     width: 73.w,
     
      decoration: BoxDecoration(
         color: AppColor.cartItemImageBackground(context),
        borderRadius: BorderRadius.circular(6)
      ),
      child: CustomCachedNetworkImage(imageUrl: imageUrl),
    );
  }
}