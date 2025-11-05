import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fruitapp/core/app_image_assets.dart';

class ActiveIconNavigationBbar extends StatelessWidget {
  const ActiveIconNavigationBbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(Assets.assetsImagesHome),
         SvgPicture.asset(Assets.assetsImagesProduct),
          SvgPicture.asset(Assets.assetsImagesShopping),
           SvgPicture.asset(Assets.assetsImagesUserAccount),
      ],
    );
  }
}