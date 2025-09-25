import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/app_image_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.plantImage),
           Center(child: SvgPicture.asset(Assets.fruitBasketImage)),
              SvgPicture.asset(Assets.circleImage),
      ],
    );
  }
}