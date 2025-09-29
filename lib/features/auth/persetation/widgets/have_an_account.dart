
import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_color.dart';
import 'package:fruitapp/core/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class DontHaveAnAcountText extends StatelessWidget {
  const DontHaveAnAcountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text(S.of(context).noAccount,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor.withOpacity(.5)),),
        Text(S.of(context).createAccount,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor),),
     ],
    );
  }
}