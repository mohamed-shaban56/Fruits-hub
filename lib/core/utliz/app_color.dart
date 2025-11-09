import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor=Color(0xff1B5E37);
   static const secondColor=Color(0xffFFB400);
   static const lightSeconodColor=Color(0xffF8C76D);
   static const linkColor=Color(0xff2D9F5D);
   static const notificationColor=Color(0xffEEF8ED);
   static const activeNavBarItemColor=Color(0xffEEEEEE);
   static const gryColor=Color(0xffF3F5F7);
   static const forestGreen=Color(0xFF217242);
   static const backgroundLightGreen = Color(0xFFEBF9F1);
      static const mintGreen =   Color(0xffEBF9F1);
     static const darkBackground = Color(0xFF191919);
     static const greenColor=Color(0xFF1B5E37);
static const lightGray =Color(0xff979899);
 
    static const Color grayBlue = Color(0xFF949D9E);
  static Color fruitBackGround(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Color(0xffF3F5F7):Color(0xff171717);
  }
    static Color offersBackgroundColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Colors.transparent:Colors.white;
  }
     static Color fruitItemActionButtomBackground(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.primaryColor:AppColor.forestGreen;
  }

    static Color notificationBackgroundColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Colors.white:AppColor.darkBackground;
  }
  static Color searchbarBackground(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.gryColor:AppColor.darkBackground;
  }
    static Color cartHeaderBackground(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.mintGreen:AppColor.darkBackground;
  }
      static Color cartHeaderTextColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.primaryColor:Colors.white;
  }
     static Color signOutUserBackgroind(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?  AppColor.backgroundLightGreen:AppColor.darkBackground;
  }
    static Color signOutUserTextColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?  AppColor.primaryColor:AppColor.grayBlue;
  }
    static Color aboutUsBacGroundColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light? Colors.white:AppColor.darkBackground;
  }
     static Color orderViewItemBackground(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light? Colors.white:AppColor.darkBackground;
  }
   static Color aboutUsTextColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Colors.black:Colors.white;
  }
    static Color orderActionButtonBackgroundColr(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Color(0xFF00C853) :Colors.white;
  }
  
  static Color textFildBackgroundColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.gryColor :AppColor.darkBackground;
  }
  static Color textFilIconColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Color(0xffC9CECF) :Colors.white;
  }
   static Color cartItemImageBackground(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.activeNavBarItemColor :AppColor.forestGreen;
  }
   static Color shippingItemSectionBackgroun(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Color(0xffF3F5F7) :AppColor.darkBackground;
  }
   static Color shippingActiveItem(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?AppColor.primaryColor :Colors.white;
  }
     static Color reviewItemSectionBackgroun(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Color(0xffF3F5F7) :AppColor.darkBackground;
  }
    static Color reviewItemSectionLocationColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Colors.black :Color(0xffF3F5F7);
  }
   static Color reviewItemTextColor(BuildContext context)
  {
   return    Theme.of(context).brightness==Brightness.light?Colors.black.withOpacity(.5) :Colors.white;
  }
}