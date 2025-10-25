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
List<AccountViewItemsModel>accountItemsList=[
  AccountViewItemsModel(image: Assets.accountViewUserImage, title:  S.current.account, icon:  Icons.arrow_forward_ios,),
AccountViewItemsModel(image: Assets.requstImage, title: S.current.orders, icon:  Icons.arrow_forward_ios,),
  AccountViewItemsModel(image: Assets.heartimage, title: S.current.favorites, icon:  Icons.arrow_forward_ios),
 AccountViewItemsModel(image: Assets.notificationImage, title: S.current.notifications, icon:  FontAwesomeIcons.toggleOff),
 AccountViewItemsModel(image: Assets.languageImage, title: S.current.language, icon: Icons.arrow_forward_ios,),
  AccountViewItemsModel(image: Assets.infoCircleImage, title: S.current.about_us, icon: Icons.arrow_forward_ios,)
         
];
