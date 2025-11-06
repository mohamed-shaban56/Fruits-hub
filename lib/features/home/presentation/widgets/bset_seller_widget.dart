import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/best_selling_fruits/presentation/view/fruit_view.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class BsetSellerWidget extends StatelessWidget {
  const BsetSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.current.best_selling,
          style: AppStyle.bold16(),
        ),
        const Spacer(),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {
          
          PersistentNavBarNavigator.  pushNewScreen(
              context,
              screen: const FruitView(),
              withNavBar: true, 
             
            );
          },
          child: Text(
            S.current.more,
            style: AppStyle.regular13().copyWith(color: const Color(0xff949D9E)),
          ),
        ),
      ],
    );
  }
}
