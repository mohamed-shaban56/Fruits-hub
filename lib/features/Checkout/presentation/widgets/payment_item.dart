
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';


class paymentItem extends StatelessWidget {
  const paymentItem({
    super.key, required this.image, required this.isSelected,
  });
final String image;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 50.h,
      decoration: BoxDecoration(
      color: AppColor.paymentSectionColor(context),
        border: Border.all(color:isSelected? AppColor.paymentActiveItem(context):Colors.transparent),
        borderRadius: BorderRadius.circular(4)
        ,image: DecorationImage(
          
          image:  AssetImage(image))
      ),
      
    );
  }
}