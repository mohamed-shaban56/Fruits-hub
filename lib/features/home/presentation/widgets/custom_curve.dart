


import 'package:flutter/material.dart';
class CustomCurve extends CustomClipper<Path>{
  Path path=Path();
  @override
  Path getClip(Size size) {
   path.lineTo(0, size.height-60);

   path.quadraticBezierTo(size.width/2, size.height, size.width,size.height-60 );

   path.lineTo(size.width, 0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;

}