import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class ShoppingButton extends StatelessWidget {
  const ShoppingButton({super.key, required this.buttonName, this.onTap});
final String buttonName;
final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.offerItemTextColor(context),
          borderRadius: BorderRadius.circular(4)
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
          child: Text(buttonName,style: AppStyle.bold13().copyWith(color: AppColor.offerItemShopingTtext(context)),),
        ),
      ),
    );
  }
}