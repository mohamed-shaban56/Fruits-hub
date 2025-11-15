
import 'package:flutter/material.dart';




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
      child: Stack(
        children: [
          Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: -5,
            child: Icon(Icons.arrow_back_ios,color: Colors.black,))
        ],
      )
            
            
    );
  }
}
