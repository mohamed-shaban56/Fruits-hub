
import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/domain/check_out_step_entity/check_out_step_entity.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/active_and_inactive_check_out_step.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/animate_to_step.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/is_step_validate.dart';


class CheckOutStep extends StatefulWidget {
  const CheckOutStep(
      {super.key,
      required this.controller,
      required this.orderInputEntity,
      required this.currentPage});
  final PageController controller;
  final OrderInputEntity orderInputEntity;
  final int currentPage;
  @override
  State<CheckOutStep> createState() => _CheckOutStepState();
}

class _CheckOutStepState extends State<CheckOutStep> {
  int stepPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: checkOutStepList.asMap().entries.map((e) {
          int index = e.key;

          return GestureDetector(
              onTap: () {
               
                setState(() {
                   stepPosition = index;
                });
     if( index>widget.currentPage&& isStepDataValid(context, index, widget.orderInputEntity))
        {
        animateToStep(widget.controller, index);
         }
       if(index<widget.currentPage)
         {
          animateToStep(widget.controller, index);
         }
                
              },
              child: ActiveAndInactiveCheckOutStep(
                  isSelected: widget.currentPage>=index,
                  checkOutStepEntity: e.value));
        }).toList());
  }
}


