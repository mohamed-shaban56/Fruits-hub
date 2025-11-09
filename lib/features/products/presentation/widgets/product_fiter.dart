import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/generated/l10n.dart';




class ProductFiterWidget extends StatelessWidget {
  const ProductFiterWidget({super.key, required this.productLengt});
final int productLengt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$productLengt ${S.current.results}'),

        Spacer(),
        Container(
          height: 31.h,
          width: 44.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey)
          ),
          child: Center(child: SvgPicture.asset(Assets.assetsImagesProductFilter)), 
        )
       
      ],
    );
  }
}