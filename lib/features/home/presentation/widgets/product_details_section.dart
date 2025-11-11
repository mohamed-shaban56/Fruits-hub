
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
// import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_datails_title_and_subtitle.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_action_button.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_product_desc.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_product_info.dart';
import 'package:fruitapp/generated/l10n.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key,
    required this.product,
    required this.isA,
  });

  final ProductEntity product;
  final bool isA;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: FruitItemDetailsTitleAndSubTitL(
                  product: product, isA: isA),
            ),
            Spacer(),
            FruitItemDetailsActionButton(product: product,),
          
            SizedBox(
              height: 16,
            ),
            
          
          ],
        ),
          FruitItemDetailsDescription(desc: product.productDesc,),
           SizedBox(
              height: 16,
            ),
          FruitItemDetailsAllProductDetailsInfo(product: product,),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              onPressed: () {
                 context.read<CartCubit>().addProduct(product);
                 userMessege(context: context, errorMessege: S.current.productAddedToCart);
              },
              text: S.current.product_add_to_cart)
      ],
    );
  }
}
