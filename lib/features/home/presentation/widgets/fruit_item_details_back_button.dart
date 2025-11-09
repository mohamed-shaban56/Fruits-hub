
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
      child: Container(
height: 44,
width: 44,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(30),
),
child: Icon(Icons.arrow_back_ios,color: Colors.black,),
      )
            
            
    );
  }
}
