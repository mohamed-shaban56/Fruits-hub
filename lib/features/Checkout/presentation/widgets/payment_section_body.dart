import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/payment_list_generate.dart';
import 'package:fruitapp/generated/l10n.dart';

class PaymentSectionBody extends StatelessWidget {
  const PaymentSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:24.h ,),
        Text(S.current.checkout_choose_payment_method_title,style: AppStyle.bold13(),),
        
  SizedBox(height:10.h ,),
          Text(S.current.checkout_choose_payment_method_subtitle,style: AppStyle.regular13().copyWith(color: Color(0xff616A6B)),),
SizedBox(height: 13.h,),


    PaymentListGenerate()
      ],
    );
  }
}
