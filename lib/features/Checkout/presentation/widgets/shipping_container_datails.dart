
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shippin_section_active_indictor.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shipping_section_inactive_indicator.dart';


class ShippinContainerDetails extends StatelessWidget {
  const ShippinContainerDetails({
    super.key, required this.isSelected, required this.title, required this.subTitle, required this.price,
  });
  final String title,subTitle ,price;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
    isSelected?ShippingSectionActiveIndicator():  ShippingSectionInActiveIndicator(),

      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(title,style: AppStyle.semiBold13(),),
      SizedBox(height: 6.h,),
      Text(subTitle,style: AppStyle.regular13().copyWith(color: Color(0xff3A8B33)),) ,
        ],
      )
      ,
      Spacer(),
      Center(child: Text(price,style: AppStyle.bold13().copyWith(color: Color(0xff3A8B33)),)),
      SizedBox(width: 13.w,)
        ],
      ),
    );
  }
}

