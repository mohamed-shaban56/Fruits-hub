
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';

class FruitItemDetailsActionButton extends StatelessWidget {
  const FruitItemDetailsActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isA= isArabic(context);
    return Padding(
      padding:  EdgeInsets.only(right: isA?0:20,left: isA?20:0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      AddRemoveButton(
        onTap: () {
        },
        radius: 20,
        backGroundcolor:
            AppColor.fruitItemActionButtomBackground(context),
        icon: Icons.add,
        iconColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.black,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text('4',style: AppStyle.bold16(),),
      ),
      
       AddRemoveButton(
        onTap: () {
        },
        radius: 20,
        backGroundcolor:AppColor.gryColor,
        icon: Icons.remove,
        iconColor: Colors.black,
      ),
        ],
      ),
    );
  }
}