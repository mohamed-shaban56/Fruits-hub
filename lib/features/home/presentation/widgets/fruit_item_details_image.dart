
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

import 'package:fruitapp/features/home/presentation/widgets/custom_curve.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_cached_network_image.dart';

class FruitItemDetailsImage extends StatelessWidget {
  const FruitItemDetailsImage({
    super.key,
    required this.height,
    required this.imageUrl,
  });

  final double height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:CustomCurve() ,
      child: Container(
        height: height/2.3,
        width: double.infinity,
        color: AppColor.fruitItemDetailsImageBackground(context),
       child: Center(
         child: SizedBox(
          height: 170,
          width: 221,
          child: FruitItemDetailsCachedNetworkImage(imageUrl: imageUrl)),
       ),
      ),
    );
  }
}

