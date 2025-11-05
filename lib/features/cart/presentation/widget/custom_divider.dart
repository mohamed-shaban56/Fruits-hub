
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
    height: 10,
    thickness: 3,
    color: AppColor.gryColor,
    );
  }
}