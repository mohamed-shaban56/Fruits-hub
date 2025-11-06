import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

void handleAddressNavigationLogic(OrderInputEntity orderEntity, BuildContext context,int index,PageController controller) {
    if(orderEntity.addressEntity !=null)
    {
         
          controller.animateToPage(index,duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
        }else{
          userMessege(context: context, errorMessege: S.current.addressInfo);
        }
  }
