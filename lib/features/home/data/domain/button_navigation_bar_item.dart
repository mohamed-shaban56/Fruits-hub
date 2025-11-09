
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/generated/l10n.dart';


class ButtonNavigationBarItemEntity {
  final String activeIcon,inActiveIcon,text;

  ButtonNavigationBarItemEntity({required this.activeIcon, required this.inActiveIcon, required this.text});
  

}
List<ButtonNavigationBarItemEntity> get getButtonnavigationBarItem =>[
  ButtonNavigationBarItemEntity(activeIcon: Assets.assetsImagesHome, inActiveIcon: Assets.assetsImagesOutlinehome, text: S.current.home),
   ButtonNavigationBarItemEntity(activeIcon: Assets.assetsImagesProduct, inActiveIcon: Assets.assetsImagesOutlineProductImage, text: S.current.products),
    ButtonNavigationBarItemEntity(activeIcon: Assets.assetsImagesShopping, inActiveIcon: Assets.assetsImagesOutlineshoppingCart, text: S.current.cart),
     ButtonNavigationBarItemEntity(activeIcon: Assets.assetsImagesUserAccount, inActiveIcon: Assets.assetsImagesOutlineUserImage, text: S.current.profile),
];