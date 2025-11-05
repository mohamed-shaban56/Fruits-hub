
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fruitapp/core/widgets/custom_caced_network_image.dart';


class CartViewImageImage extends StatelessWidget {
  const CartViewImageImage({
    super.key, required this.imageUrl,
  });
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 92.h,
     width: 73.w,
      color: Color(0xffF3F5F7),
      child: CustomCachedNetworkImage(imageUrl: imageUrl),
    );
  }
}