

import 'package:flutter/material.dart';
import 'package:fruitapp/core/widgets/fruit_item.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';

class ProductGrideView extends StatelessWidget {
  const ProductGrideView({super.key, required this.products});
final List<ProductEntity>products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount:products.length ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 16,
        crossAxisCount: 2,mainAxisSpacing: 8,childAspectRatio: 163/214), itemBuilder: (context,index)=>
      FruitItem(product: products[index],));
  }
}