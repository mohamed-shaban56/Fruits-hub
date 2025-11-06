import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key, this.child});
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.reviewItemSectionBackgroun(context),
        borderRadius: BorderRadius.circular(4)
      ),
      child: child,
    );
  }
}