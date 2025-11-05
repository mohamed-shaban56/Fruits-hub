
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

class ShippingSectionActiveDot extends StatelessWidget {
  const ShippingSectionActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 11.h,
        width: 11.w,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}