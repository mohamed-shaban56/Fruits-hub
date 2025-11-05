import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shipping_section_active_dot.dart';

class ShippingSectionActiveIndicator extends StatelessWidget {
  const ShippingSectionActiveIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return Padding(
      padding:  EdgeInsets.only(right: isA?9:0,left: isA?0:9),
      child: Container(
        height: 18.h,
        width: 18.w,
        
        decoration: BoxDecoration(
         color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(18),
         
        ),
        child: ShippingSectionActiveDot()
      ),
    );
  }
}
