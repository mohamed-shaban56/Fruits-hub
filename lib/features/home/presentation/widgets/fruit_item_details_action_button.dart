

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:provider/provider.dart';

class FruitItemDetailsActionButton extends StatefulWidget {
  const FruitItemDetailsActionButton({
    super.key, required this.product,
  });
final ProductEntity product;
  @override
  State<FruitItemDetailsActionButton> createState() => _FruitItemDetailsActionButtonState();
}

class _FruitItemDetailsActionButtonState extends State<FruitItemDetailsActionButton> {
  int item=0;
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
setState(() {
  item++;
});
     context.read<CartCubit>().cartEntity.cartItems.forEach((e)=>e.productEntity.productCode==widget.product.productCode?e.increamentCount():null);

   
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
        child: Text(item.toString(),style: AppStyle.bold16(),),
      ),
      
       AddRemoveButton(
        onTap: () {
          setState(() {
            if(item>0)
            {
              item--;
            }
                 context.read<CartCubit>().cartEntity.cartItems.forEach((e)=>e.productEntity.productCode==widget.product.productCode?e.decreamentCount():null);
          });
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