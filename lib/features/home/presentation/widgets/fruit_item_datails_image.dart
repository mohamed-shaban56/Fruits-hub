

import 'package:flutter/material.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_back_button.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_image.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.height,
    required this.imageUrl,
    required this.isA,
  });

  final double height;
  final String imageUrl;
  final bool isA;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FruitItemDetailsImage(height: height, imageUrl: imageUrl),
        Positioned(
          top: 25,
          left:isA?null :20,
          right: isA?20:null,
          child: FruitItemDetailsBackButton()
              ),
        
      ],
    );
  }
}
