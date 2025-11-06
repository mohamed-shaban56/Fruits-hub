
import 'package:flutter/material.dart';


class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key,required this.orderStatus
  });
final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(6)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Text(orderStatus),
      ),
    );
  }
}