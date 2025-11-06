import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
    return [
PersistentBottomNavBarItem(

        icon: const SizedBoxImage(image: Assets.assetsImagesOutlinehome,),
        title: (S.current.home),
        textStyle: AppStyle.semiBold11(),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
    
      ),
      PersistentBottomNavBarItem(
        icon: SizedBoxImage(image: Assets.assetsImagesOutlineProductImage,),
        title: (S.current.products),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const SizedBoxImage(image: Assets.assetsImagesOutlineshoppingCart,),
        title: (S.current.shop_now),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon:  Icon(Icons.dashboard),
        title: (S.current.dashboard),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: SizedBoxImage(image: Assets.assetsImagesOutlineUserImage,),
        title: (S.current.profile),
        textStyle:AppStyle.semiBold11().copyWith(color: Colors.white) ,
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

class SizedBoxImage extends StatelessWidget {
  const SizedBoxImage({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
         
         image
    );
  }
}