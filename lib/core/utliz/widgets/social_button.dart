
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, required this.title, required this.image,this.onTap
  });
final String title,image;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
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
             child: SvgPicture.asset(
              width: 30,
              height: 30,
              image,),
           ),
           Expanded(child: Center(child: Text(title,style: AppStyle.semiBold16(),))),
         
         ],
       ),
      ),
    );
  }
}
