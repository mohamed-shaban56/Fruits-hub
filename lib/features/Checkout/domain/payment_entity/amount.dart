import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/domain/payment_entity/details.dart';


class Amount {
  final String total ;
  final String currency;
  final Details details;

  Amount({required this.total, required this.currency, required this.details});
  factory Amount.fromEntity(OrderInputEntity orderEntity,String currency)
  {
    return Amount(total: orderEntity.calculateTotalPriceAfterShippingAndShippinCost().toString(), 
    currency: currency, details: Details.fromEntity(orderEntity));
  }
  toJson()=>{
    "total": total,
   "currency": currency,
    "details": details.toJson()
};
}