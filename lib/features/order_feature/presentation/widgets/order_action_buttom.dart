



import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/enum/order_status_enum.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/update_order/cubit/update_order_cubit.dart';
import 'package:provider/provider.dart';

class OrderActionButtom extends StatelessWidget {
  const OrderActionButtom({
    super.key, required this.orderStatus, this.orderId
  });
  final String? orderId;
final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: orderStatus==OrderStatusEnum.pending.name,
          child: ElevatedButton(onPressed: (){
           
            orderId==null?null:
            context.read<UpdateOrderCubit>().updateOrder(orderId: orderId!, status:{'status': OrderStatusEnum.accepted.name});
          }, child: Text('Accepted'))),
        SizedBox(width: 20,),
         Visibility(
          visible:  orderStatus==OrderStatusEnum.pending.name,
          child: ElevatedButton(onPressed: (){
                 orderId==null?null:
 context.read<UpdateOrderCubit>().updateOrder(orderId: orderId!, status:{'status': OrderStatusEnum.cancelled.name});
          }, child: Text('Canceled'))),
      ],
    );
  }
}
