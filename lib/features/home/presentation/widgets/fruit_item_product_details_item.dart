

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

class FruitItemProductDetailsInfo extends StatelessWidget {
  const FruitItemProductDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.gryColor),
        borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}
