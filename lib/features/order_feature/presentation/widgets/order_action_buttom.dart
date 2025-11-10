import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
// import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/enum/order_status_enum.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/get_order_cubit/get_order_cubit.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/update_order/cubit/update_order_cubit.dart';
import 'package:provider/provider.dart';

class OrderActionButtom extends StatelessWidget {
  const OrderActionButtom({super.key, required this.orderStatus, this.orderId});
  final String? orderId;
  final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
            visible: orderStatus == OrderStatusEnum.pending.name,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12))),
                onPressed: ()async {
                  orderId == null
                      ? null
                      :await context.read<UpdateOrderCubit>().updateOrder(
                          orderId: orderId!,
                          status: {'status': OrderStatusEnum.accepted.name});
                          context.read<GetOrderCubit>().getOrder();
                },
                child: Text(
                  'Accepted',
                  style: AppStyle.bold13().copyWith(color: Colors.white),
                ))),
        SizedBox(
          width: 20,
        ),
        Visibility(
            visible: orderStatus == OrderStatusEnum.pending.name,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12))),
                onPressed: () async{
                  orderId == null
                      ? null
                      : await context.read<UpdateOrderCubit>().updateOrder(
                          orderId: orderId!,
                          status: {'status': OrderStatusEnum.cancelled.name});

                         context.read<GetOrderCubit>().getOrder();
                },
                child: Text(
                  'Canceled',
                  style: AppStyle.bold13().copyWith(color: Colors.white),
                ))),
      ],
    );
  }
}
