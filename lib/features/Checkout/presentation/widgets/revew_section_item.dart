
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class ReviewSectionItem extends StatelessWidget {
  const ReviewSectionItem({
    super.key, this.child,
  });
final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32,),
        Text("${S.current.order_summary} :",style: AppStyle.bold16(),),
         SizedBox(height: 8,),
        Container(
          height: 128.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.gryColor,
            borderRadius: BorderRadius.circular(4)
          ),
          child: child,
        )
      ],
    );
  }
}