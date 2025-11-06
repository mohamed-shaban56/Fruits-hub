import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';

class InactiveIconNavigationBbar extends StatelessWidget {
  const InactiveIconNavigationBbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(Assets.assetsImagesOutlinehome),
         SvgPicture.asset(Assets.assetsImagesOutlineProductImage),
          SvgPicture.asset(Assets.assetsImagesOutlineshoppingCart),
           SvgPicture.asset(Assets.assetsImagesOutlineUserImage),
      ],
    );
  }
}