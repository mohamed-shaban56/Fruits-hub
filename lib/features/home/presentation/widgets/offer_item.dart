
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/presentation/widgets/offer_details.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
   var isA=isArabic(context);
    return Directionality(
      textDirection: isA?TextDirection.rtl:TextDirection.ltr,
      child: Container(
        height: 158.h,
        width: 342.w,
      decoration: BoxDecoration(
        color: AppColor.offersBackgroundColor(context),
        borderRadius: BorderRadius.only(
          topLeft:isA?Radius.circular(20):Radius.circular(0),bottomLeft: isA?Radius.circular(20):Radius.circular(0),
          topRight: isA?Radius.circular(0):Radius.circular(20),bottomRight: isA?Radius.circular(0):Radius.circular(20)
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left:isA? 0:342.w/2,
            top: 0,
            bottom: 0,
            right: isA?342.w/2:0,
            child: SvgPicture.asset(Assets.assetsImagesPineappleCuate)),
      OffersDetails(isA: isA),
        ],
      ),
        ),
    );
  }
}
