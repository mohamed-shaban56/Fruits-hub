
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class ProductNameAndQuantaty extends StatelessWidget {
  const ProductNameAndQuantaty({
    super.key,this.onTap, required this.productName, required this.productUnit
  });
final Function()? onTap;
final String productName,productUnit;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(productName,style: AppStyle.bold13(),),
    subtitle: Text('$productUnit كم',style: AppStyle.regular13().copyWith(color: AppColor.secondColor),),
    trailing: GestureDetector(
      onTap:onTap ,
      child: Container(
        color: Colors.transparent,
        child: SvgPicture.asset(Assets.trashImage),
      ),
    )
    );
  }
}