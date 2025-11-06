
import 'package:flutter/material.dart';
import 'package:fruitapp/generated/l10n.dart';

class OrderProductQuantity extends StatelessWidget {
  const OrderProductQuantity({
    super.key, required this.quantity,
  });
final int quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Row(
          children: [
            Text("${S.current.quantity} :"),
            Text(quantity.toString()),
        
          ],
        )
      ],
    );
  }
}


class OrderProductCode extends StatelessWidget {
  const OrderProductCode({
    super.key, required this.code,
  });
final String code;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Row(
          children: [
            Text("${S.current.code} :"),
            Text(code),
        
          ],
        )
      ],
    );
  }
}



class OrderProductPrice extends StatelessWidget {
  const OrderProductPrice({
    super.key, required this.price,
  });
final String  price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Row(
          children: [
            Text("${S.current.order_price} :"),
            Text(price),
        
          ],
        )
      ],
    );
  }
}