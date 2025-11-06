import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, required this.isChecked, required this.onchange});
final bool isChecked;
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
        SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: S.of(context).terms,style: AppStyle.semiBold13()
                            ),
                            TextSpan(text: S.of(context).condition,style: AppStyle.semiBold13().copyWith(color: AppColor.linkColor))
                          ])
                        ),
                      ],
                    ),
                  )
      ],
    );
  }
}