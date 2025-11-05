import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/domain/check_out_step_entity/check_out_step_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/active_step_item.dart';

import 'package:fruitapp/features/Checkout/presentation/widgets/in_active_step_item.dart';

class ActiveAndInactiveCheckOutStep extends StatelessWidget {
  const ActiveAndInactiveCheckOutStep({super.key, required this.isSelected, required this.checkOutStepEntity});
final bool isSelected;
final CheckOutStepEntity checkOutStepEntity;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(firstChild: InActiveStepItem(checkOutStepEntity: checkOutStepEntity), secondChild: ActiveStepItem(stepName: checkOutStepEntity.stepName), crossFadeState: isSelected?CrossFadeState.showSecond:CrossFadeState.showFirst, duration: Duration(milliseconds: 300));
  }
}