import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
    
         CircleAvatar(
       radius: 11.5,
       backgroundColor: AppColor.productBackGround,
       child: Text('1',style: AppStyle.semiBold13().copyWith(color: AppColor.primaryColor),),
     ),
     SizedBox(width: 4.w,),
     Text('data',style: AppStyle.bold13().copyWith(color: Color(0xffAAAAAA)),),
     ],
    );
  }
}