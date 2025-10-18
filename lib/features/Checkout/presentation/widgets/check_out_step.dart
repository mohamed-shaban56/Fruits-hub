import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/domain/check_out_step_entity/check_out_step_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/active_and_inactive_check_out_step.dart';

class CheckOutStep extends StatefulWidget {
  const CheckOutStep({super.key});

  @override
  State<CheckOutStep> createState() => _CheckOutStepState();
}

class _CheckOutStepState extends State<CheckOutStep> {
  int stepPosition=0;
  @override
  Widget build(BuildContext context) {


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: 
 checkOutStepList.asMap().entries.map((e){
  int index=  e.key;
       
       return GestureDetector(
        onTap: () {
          stepPosition=index;
          setState(() {
            
          });
        },
        child: ActiveAndInactiveCheckOutStep(isSelected: stepPosition==index, checkOutStepEntity: e.value));
    }).toList()
      
    );
    
   
  }
}