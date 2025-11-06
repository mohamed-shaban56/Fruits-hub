
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/home/presentation/widgets/shopping_button.dart';
import 'package:fruitapp/generated/l10n.dart';

class OffersDetails extends StatelessWidget {
  const OffersDetails({
    super.key,
    required this.isA,
  });

  final bool isA;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179.w,
      height: 158.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(Assets.assetsImagesOofersDetailsBackground) )
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: isA?0:33.w,right: isA?33.w:0),
        child: Column(
          crossAxisAlignment: isA?CrossAxisAlignment.start:CrossAxisAlignment.end,
          children: [
            Spacer(),
            Text(S.current.eid_offer,style: AppStyle.regular13().copyWith(color: Color(0xffFFFFFF)),),
             SizedBox(height: 8.h,),
              Text(S.current.discount,style: AppStyle.bold19().copyWith(color: Color(0xffFFFFFF)),),
              SizedBox(height: 7.h,),
             ShoppingButton(buttonName: S.current.shop_now),
              SizedBox(height: 30.h,),
          ],
        ),
      ),
        
    );
  }
}


