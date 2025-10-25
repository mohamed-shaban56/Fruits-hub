
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';


class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(S.current.about_us_section1,style: AppStyle.regular13().copyWith(color: AppColor.grayBlue), ),
                SizedBox(height: 5.h,),
                  Text(S.current.about_us_section2,style: AppStyle.regular13(), ),
                SizedBox(height: 5.h,),
                  Text(S.current.about_us_section3,style: AppStyle.regular13().copyWith(color: AppColor.grayBlue), ),
                SizedBox(height: 5.h,),
                  Text(S.current.about_us_section4,style: AppStyle.regular13() ),
                SizedBox(height: 5.h,),
                  Text(S.current.about_us_section5,style: AppStyle.regular13() ),
                SizedBox(height: 5.h,),
                Text(S.current.about_us_section6,style: AppStyle.regular13() ),
                SizedBox(height: 5.h,),
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}