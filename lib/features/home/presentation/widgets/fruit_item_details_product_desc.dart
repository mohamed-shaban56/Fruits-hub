
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class FruitItemDetailsDescription extends StatelessWidget {
  const FruitItemDetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
                 children: [
                   Text('ينتمي إلى الفصيلة القرعية ولثمرته لُب حلو المذاق وقابل للأكل، وبحسب علم النبات فهي تعتبر ثمار لبيّة، تستعمل لفظة البطيخ للإشارة إلى النبات نفسه أو إلى الثمرة تحديداً',style: AppStyle.regular13().copyWith(color: AppColor.grayBlue),),
                 ],
               );
  }
}