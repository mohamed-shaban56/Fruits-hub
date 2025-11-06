
import 'package:flutter/material.dart';
import 'package:fruitapp/core/widgets/custom_caced_network_image.dart';


class OrderProductImage extends StatelessWidget {
  const OrderProductImage({
    super.key, required this.imageUrl,
  });
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 70,
     width: 130,
     decoration: BoxDecoration(
   
       borderRadius: BorderRadius.circular(4)
     ),
     child: CustomCachedNetworkImage(imageUrl: imageUrl),
          );
  }
}

