import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/Checkout/domain/check_out_step_entity/check_out_step_entity.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.checkOutStepEntity});
final CheckOutStepEntity checkOutStepEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
    
         CircleAvatar(
       radius: 11.5,
       backgroundColor: AppColor.gryColor,
       child: Text(checkOutStepEntity.stepPosition,style: AppStyle.semiBold13().copyWith(color: AppColor.primaryColor),),
     ),
     SizedBox(width: 4.w,),
     Text(checkOutStepEntity.stepName,style: AppStyle.bold13().copyWith(color: Color(0xffAAAAAA)),),
     ],
    );
  }
}