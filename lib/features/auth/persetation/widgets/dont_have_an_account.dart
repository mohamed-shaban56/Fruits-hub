
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class DontHaveAnAcountText extends StatelessWidget {
  const DontHaveAnAcountText({
    super.key, this.onTap,
  });
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(children: [
        TextSpan(text: S.of(context).noAccount,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor.withOpacity(.5)),),
        TextSpan(
          recognizer: TapGestureRecognizer()..onTap=onTap,
          text: S.of(context).createAccount,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor),)
        ])),
      ],
    );
  }
}
