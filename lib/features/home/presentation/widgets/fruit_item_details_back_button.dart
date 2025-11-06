
import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_image_assets.dart';

class FruitItemDetailsBackButton extends StatelessWidget {
  const FruitItemDetailsBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        Navigator.pop(context);
      },
      child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
          backgroundImage: AssetImage(Assets.assetImageBackIos),
            
            ),
    );
  }
}
