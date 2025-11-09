


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';
import 'package:fruitapp/core/widgets/fruit_item_title_and_sub_title.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitItemProductInfoAndActionButton extends StatelessWidget {
  const FruitItemProductInfoAndActionButton({
    super.key,
    required this.product,
   
  });

  final ProductEntity product;


  @override
  Widget build(BuildContext context) {

   
    return Row(
      children: [
        FruitItemTitleAndSubTitle(product: product),
        Spacer(),
        AddRemoveButton(
        onTap: () {
        context.read<CartCubit>() .addProduct(product);
        
          userMessege(context: context, errorMessege: S.current.productAddedToCart);
        },
        radius: 22,
        backGroundcolor: AppColor.fruitItemActionButtomBackground(context),
        icon: Icons.add,
        iconColor: Theme.of(context).brightness==Brightness.light?Colors.white:Colors.black,
      ),
    
    
      ],
    );
  }
}
