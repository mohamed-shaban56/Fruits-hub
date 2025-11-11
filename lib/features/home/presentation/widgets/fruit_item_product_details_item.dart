
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';



class FruitItemProductDetailsInfo extends StatelessWidget {
  const FruitItemProductDetailsInfo({
    super.key, required this.image, required this.title, required this.info,
  });
final String image,title,info;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.gryColor,width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
child:Padding(
  padding: const EdgeInsets.only(top: 12,bottom: 12),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
   Text(info,style: AppStyle.bold16().copyWith(color: AppColor.linkColor),),
   SizedBox(height: 8,),
    Text(title,style: AppStyle.semiBold11().copyWith(color: AppColor.lightGray),),
        ],
      ),
      SizedBox(width: 16,),
       Image.asset(image),
    ],
  ),
)

    );
  }
}
