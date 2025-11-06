
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/features/home/presentation/widgets/outLine_input_border.dart';
import 'package:fruitapp/features/home/presentation/widgets/sized_image.dart';
import 'package:fruitapp/generated/l10n.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,this.onChanged
  });
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
      blurRadius: 9,
        offset: Offset(0, 2)
          )
          
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: S.current.search_placeholder,
          prefixIcon: SizedImage( image: Assets.assetsImagesSearchNormal,),
          suffixIcon: SizedImage( image: Assets.assetsImagesFilterimage),
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder:  buildOutLineInputBorder(),
          border:  buildOutLineInputBorder(),
        ),
        onChanged:onChanged ,
      ),
    );
  }
}