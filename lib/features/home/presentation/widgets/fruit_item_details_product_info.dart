
import 'package:flutter/material.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_product_details_item.dart';

class FruitItemDetailsAllProductDetailsInfo extends StatelessWidget {
  const FruitItemDetailsAllProductDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
    Row(
      children: [
    Expanded(child: FruitItemProductDetailsInfo()),
    SizedBox(width: 16,),
    Expanded(child: FruitItemProductDetailsInfo()),
      ],
    ),
    SizedBox(height: 16,),
    Row(
      children: [
    Expanded(child: FruitItemProductDetailsInfo()),
    SizedBox(width: 16,),
    Expanded(child: FruitItemProductDetailsInfo()),
      ],
    ),
      ],
    );
  }
}