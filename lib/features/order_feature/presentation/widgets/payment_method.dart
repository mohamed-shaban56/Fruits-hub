
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
    required this.isA, required this.paymentType,
  });

  final bool isA;
final String paymentType;
  @override
  Widget build(BuildContext context) {
    return Directionality(
          textDirection:isA?TextDirection.rtl:TextDirection.ltr ,
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              Text("${S.current.payment_method} :",style: AppStyle.bold13().copyWith(color: Colors.grey),),
              Text(paymentType,style: AppStyle.bold13().copyWith(color: Colors.grey),),
          
            ],
          ),
        );
  }
}





