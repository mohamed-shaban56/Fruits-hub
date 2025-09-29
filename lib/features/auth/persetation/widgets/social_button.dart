
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/app_style.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, required this.title, required this.image,
  });
final String title,image;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 56,
     width: double.infinity,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       border: BoxBorder.all(width: 1)
     ),
     child: Row(
       children: [
         Padding(
           padding: const EdgeInsets.only(right: 18),
           child: SvgPicture.asset(image),
         ),
         Expanded(child: Center(child: Text(title,style: AppStyle.semiBold16(),))),
       
       ],
     ),
    );
  }
}
