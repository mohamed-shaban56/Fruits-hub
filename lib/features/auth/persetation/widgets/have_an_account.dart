// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:fruitapp/core/utliz/app_color.dart';
// import 'package:fruitapp/core/utliz/app_style.dart';
// import 'package:fruitapp/generated/l10n.dart';

// class HaveAnAccount extends StatelessWidget {
//   const HaveAnAccount({super.key, this.onTap});
// final Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text.rich(TextSpan(children: [
//         TextSpan(text: S.of(context).already_have_account,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor.withOpacity(.5)),),
//         TextSpan(
          
//           recognizer: TapGestureRecognizer()..onTap=onTap,
//           text: S.of(context).login,style: AppStyle.semiBold16().copyWith(color: AppColor.primaryColor),)
//         ])),
//       ],
//     );
//   }
// }