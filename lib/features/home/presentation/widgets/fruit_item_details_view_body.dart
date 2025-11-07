import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_datails_image.dart';
import 'package:fruitapp/features/home/presentation/widgets/product_details_section.dart';


class FruitItemDetailsViewBody extends StatelessWidget {
  const FruitItemDetailsViewBody({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    var isA = isArabic(context);
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        ImageSection(height: height, imageUrl: product.imageUrl, isA: isA),
        Padding(
          padding:  EdgeInsets.only(left: isA?12:20,right: isA?20:12),
          child: SingleChildScrollView(child: ProductDetailsSection(product: product, isA: isA)),
        )
        
      ],
    );
  }
}
