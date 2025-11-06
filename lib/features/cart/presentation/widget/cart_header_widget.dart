
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';


// ignore: must_be_immutable
class CartHeaderWidget extends StatelessWidget {
   CartHeaderWidget({
    super.key,required this.lenght
  });
 int lenght=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: double.infinity,
     color:AppColor.cartHeaderBackground(context) ,
     child: Center(
      child:Text.rich(
        
        TextSpan(children: [
        TextSpan(
          text:  S.current.shopping_cart_summary,style: AppStyle.regular13().copyWith(color:AppColor.cartHeaderTextColor(context))),
        TextSpan(
          text: lenght.toString()
        ),
        
        TextSpan(
          text:  S.current.shoppping_cart_summary2,style: AppStyle.regular13().copyWith(color: AppColor.cartHeaderTextColor(context)),
        )
      ]))
     ),
    );
  }
}