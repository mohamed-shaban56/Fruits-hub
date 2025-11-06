import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

bool isStepDataValid(
    BuildContext context, int index, OrderInputEntity orderEntity) {
  if (index == 1 && orderEntity.isPayWithCash == null) {
    userMessege(
        context: context,
        errorMessege: S.current.checkout_select_payment_method);
    return false;
  } else if (index == 2 && orderEntity.addressEntity == null) {

    userMessege(context: context, errorMessege: S.current.addressInfo);
    return false;
  }
else{
  return true;
}
}
