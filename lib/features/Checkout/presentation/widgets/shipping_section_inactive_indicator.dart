import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';

class ShippingSectionInActiveIndicator extends StatelessWidget {
  const ShippingSectionInActiveIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return Padding(
      padding:  EdgeInsets.only(right: isA?2:0,left: isA?0:2),
      child: Container(
        height: 18.h,
        width: 18.w,
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color:Color(0xff949D9E), )
        ),
      ),
    );
  }
}