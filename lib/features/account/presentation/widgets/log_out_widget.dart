import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';



class LogOutWidget extends StatelessWidget {
  const LogOutWidget({
    super.key, this.onTap, required this.title,
  });
final Function()? onTap;
final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.h,
        width: double.infinity,
        color: AppColor.backgroundLightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Spacer(),
            Text(title,style: AppStyle.semiBold13().copyWith(color: AppColor.primaryColor),),
         Spacer(),
            SvgPicture.asset(Assets.existImage),
            SizedBox(width: 40.w,)
          ],
        ),
      ),
    );
  }
}


