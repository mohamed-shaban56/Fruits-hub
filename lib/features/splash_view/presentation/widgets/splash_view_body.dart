import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:isA?CrossAxisAlignment.end: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.assetsImagesPlandImage),
           Center(child: SvgPicture.asset(Assets.assetsFruitHubImage)),
              SvgPicture.asset(Assets.assetsImagesCircle),
      ],
    );
  }
}