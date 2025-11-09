import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruitapp/core/app_image2.dart';



import 'package:fruitapp/generated/l10n.dart';



class AccountViewItemsModel {

  final String image;
  final String title;
  final IconData icon;

  AccountViewItemsModel({required this.image, required this.title, required this.icon});
}

List<AccountViewItemsModel>getaccountItemsList({required BuildContext context})=>[
AccountViewItemsModel(image: AppImage2.accountViewUserImage, title:S.of(context).account, icon:  Icons.arrow_forward_ios,),
AccountViewItemsModel(image: AppImage2.requstImage, title: S.of(context).orders, icon:  Icons.arrow_forward_ios,),
 AccountViewItemsModel(image: AppImage2.heartimage, title: S.of(context).favorites, icon:  Icons.arrow_forward_ios),
 AccountViewItemsModel(image:AppImage2.assetImagethem, title: S.of(context).Theme, icon:  Icons.light_mode),
 AccountViewItemsModel(image: AppImage2.languageImage, title: S.of(context).language, icon: Icons.arrow_forward_ios,),
  AccountViewItemsModel(image: AppImage2.infoCircleImage, title: S.of(context).about_us, icon: Icons.arrow_forward_ios,)
];
