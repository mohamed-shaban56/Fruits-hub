import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SizedImage extends StatelessWidget {
  const SizedImage({ super.key, required this.image,});

final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: Center(child: SvgPicture.asset(image)),
    );
  }
}