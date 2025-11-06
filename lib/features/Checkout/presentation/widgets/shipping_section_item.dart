
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shipping_container_datails.dart';

class ShippingSectionItem extends StatelessWidget {
  const ShippingSectionItem({
    super.key,this.onTap,required this.isSelected, required this.title, required this.subTitle, required this.price
  });
final Function()? onTap;
final bool isSelected;
final String title,subTitle ,price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 81.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected?AppColor.shippingActiveItem(context):Colors.transparent),
          color: AppColor.shippingItemSectionBackgroun(context),
         borderRadius: BorderRadius.circular(4),
      
        ),
        child: ShippinContainerDetails(isSelected: isSelected, title: title, subTitle: subTitle, price: price,)
        
        
        
        
      
      ),
    );
  }
}
