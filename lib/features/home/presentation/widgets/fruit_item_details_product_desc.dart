
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class FruitItemDetailsDescription extends StatelessWidget {
  const FruitItemDetailsDescription({
    super.key, required this.desc,
  });
final String desc;
  @override
  Widget build(BuildContext context) {
    return Wrap(
                 children: [
                  Text(desc,style: AppStyle.regular13().copyWith(color: AppColor.grayBlue))
 
                 ],
               );
  }
}