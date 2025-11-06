import 'dart:developer';

import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/domain/payment_entity/amount.dart';
import 'package:fruitapp/features/Checkout/domain/payment_entity/item_list.dart';


class PaypalEntity {
final Amount amount;
final String desc;
final List<ItemList>itemList;

  PaypalEntity({required this.amount, required this.desc, required this.itemList});
factory PaypalEntity.fromEntity(OrderInputEntity orderEntity,String currency)
{
  return PaypalEntity(amount: Amount.fromEntity(orderEntity, currency), desc: 'paypal payment', itemList: orderEntity.cartEntity.cartItems.map((e)=>ItemList.fromEntity(e, currency)).toList());
}
dubbugError()
{
  log("amount: ${amount.toJson()}");
  log( "description: $desc,");
  log(
    
    "item_list: ${{
          "items": itemList.map((e) => e.toJson()).toList(),
        }}"
        
        );
}

Map<String, dynamic> toJson() => {
        "amount": amount.toJson(),
        "description": desc,
        "item_list": {
          "items": itemList.map((e) => e.toJson()).toList(),
        },
      };
}