
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({
    super.key, required this.stepName,
  });
final String stepName;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
    
         CircleAvatar(
       radius: 11.5,
       backgroundColor: AppColor.primaryColor,
       child: SvgPicture.asset(Assets.assetsImagesCheckedIcon),
     ),
     SizedBox(width: 4.w,),
     Text(stepName,style: AppStyle.bold13().copyWith(color: AppColor.primaryColor),),
     ],
    );
  }
}