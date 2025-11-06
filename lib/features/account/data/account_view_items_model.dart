import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/generated/l10n.dart';



class AccountViewItemsModel {

  final String image;
  final String title;
  final IconData icon;

  AccountViewItemsModel({required this.image, required this.title, required this.icon});
}

List<AccountViewItemsModel>getaccountItemsList({required BuildContext context})=>[
AccountViewItemsModel(image: Assets.accountViewUserImage, title:S.of(context).account, icon:  Icons.arrow_forward_ios,),
AccountViewItemsModel(image: Assets.requstImage, title: S.of(context).orders, icon:  Icons.arrow_forward_ios,),
  AccountViewItemsModel(image: Assets.heartimage, title: S.of(context).favorites, icon:  Icons.arrow_forward_ios),
 AccountViewItemsModel(image: Assets.notificationImage, title: S.of(context).notifications, icon:  FontAwesomeIcons.toggleOff),
 AccountViewItemsModel(image: Assets.languageImage, title: S.of(context).language, icon: Icons.arrow_forward_ios,),
  AccountViewItemsModel(image: Assets.infoCircleImage, title: S.of(context).about_us, icon: Icons.arrow_forward_ios,)
];
