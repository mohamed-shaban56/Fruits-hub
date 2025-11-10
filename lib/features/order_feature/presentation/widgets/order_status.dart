
import 'package:flutter/material.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/function_helper/get_status_color.dart';



class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key,required this.orderStatus
  });
final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: getStatusColor(orderStatus),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Text(orderStatus),
      ),
    );
  }
}

