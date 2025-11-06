
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_status.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/total_price_widget.dart';

class TotalPriceAndOrderStatus extends StatelessWidget {
  const TotalPriceAndOrderStatus({
    super.key, required this.totalPrice,required this.orderStatus
  });
final double totalPrice;
final String orderStatus;
  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return Directionality(
      textDirection: isA?TextDirection.rtl:TextDirection.ltr,
      child: Row(
        children: [
         
          TotalPriceWidget(totalPrice: totalPrice,),
           Spacer(),
          OrderStatus(orderStatus:orderStatus ,),
         
           
        ],
      ),
    );
  }
}