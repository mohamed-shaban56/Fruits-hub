import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';


class AddBroductCheckbox extends StatelessWidget {
  const AddBroductCheckbox({super.key, required this.isChecked, required this.onchange, required this.title});
final bool isChecked;
final String title;
final ValueChanged<bool> onchange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            onchange(!isChecked);
          },
          child: Container(
            width: 24,
            height: 24,
           decoration: BoxDecoration(
            color: isChecked?AppColor.primaryColor:Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.5,color: isChecked?AppColor.primaryColor:Color(0xffDDDFDF))
           ),
           child:Padding(
             padding: const EdgeInsets.all(3),
             child: SvgPicture.asset(Assets.assetsImagesCheckedIcon),
           ) ,
          ),
        ),
       Spacer(),
       Text(title)
                
                    
                
      ],
    );
  }
}