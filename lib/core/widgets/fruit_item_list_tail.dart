


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitItemListTail extends StatelessWidget {
  const FruitItemListTail({
    super.key,
    required this.product,
   
  });

  final ProductEntity product;


  @override
  Widget build(BuildContext context) {

    var isA=isArabic(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
       product.productName,
        style: AppStyle.semiBold13(),
      ),
      subtitle: FittedBox(
        child: Text.rich(
          textDirection: isA ? TextDirection.rtl : TextDirection.ltr,
          TextSpan(children: [
            TextSpan(
                text: product.productPrice.toString(),
                style: AppStyle.semiBold13().copyWith(
                    color: AppColor.lightSeconodColor,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: ' / ',
                style: TextStyle(color: AppColor.secondColor)),
            TextSpan(
                text: S.current.countaty,
                style: AppStyle.semiBold13()
                    .copyWith(color: AppColor.lightSeconodColor)),
          ]),
        ),
      ),
      trailing: AddRemoveButton(
        onTap: () {
        context.read<CartCubit>() .addProduct(product);
        
          userMessege(context: context, errorMessege: S.current.productAddedToCart);
        },
        radius: 24,
        backGroundcolor: AppColor.fruitItemActionButtomBackground(context),
        icon: Icons.add,
        iconColor: Theme.of(context).brightness==Brightness.light?Colors.white:Colors.black,
      ),
    );
  }
}
