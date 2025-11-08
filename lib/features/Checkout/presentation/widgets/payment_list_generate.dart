

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/features/Checkout/data/modles/payment_model.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

import 'package:fruitapp/features/Checkout/presentation/widgets/payment_item.dart';


class PaymentListGenerate extends StatefulWidget {
  const PaymentListGenerate({super.key});

  @override
  State<PaymentListGenerate> createState() => _PaymentListGenerateState();
}

class _PaymentListGenerateState extends State<PaymentListGenerate> {
  
int currentIndex=0;
  
  @override
  Widget build(BuildContext context) {
    var orderEnty=context.read<OrderInputEntity>();
    return Row(
      children:List.generate(paymentMethods.length, (index)=>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentIndex=index;
            });

if(paymentMethods[index].paymentMethod==Constant.kstripe)
{

 setState(() {
     orderEnty.paymentMethod=Constant.kstripe;
 });
}else if(paymentMethods[index].paymentMethod==Constant.kpaypal)
{
 
  setState(() {
     orderEnty.paymentMethod=Constant.kpaypal;
  });



 
}

      
          },
          child: paymentItem(image: paymentMethods[index].image, isSelected:currentIndex==index ,)),
      ))
    );
  }
}
