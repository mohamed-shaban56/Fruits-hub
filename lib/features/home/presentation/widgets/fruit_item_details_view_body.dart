import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_back_button.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_image.dart';


class FruitItemDetailsViewBody extends StatelessWidget {
  const FruitItemDetailsViewBody({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    double height=MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Stack(
          children: [
            FruitItemDetailsImage(height: height, imageUrl: imageUrl),
            Positioned(
              top: 25,
              left:isA?null :20,
              right: isA?20:null,
              child: FruitItemDetailsBackButton()
                  ),
            
          ],
        ),
      ],
    );
  }
}
