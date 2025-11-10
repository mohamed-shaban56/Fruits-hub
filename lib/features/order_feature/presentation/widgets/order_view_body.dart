import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/get_dummy_order.dart';
import 'package:fruitapp/core/utliz/widgets/custom_error_widget.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/get_order_cubit/get_order_cubit.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_item.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: StreamBuilder<List<OrderEntity>>(
        stream: context.read<GetOrderCubit>().getOrder(),
         builder: (context,snashot){
          if(snashot.hasData)
          {
            List<OrderEntity> order=snashot.data!;
            return ListView.builder(
                     itemCount: order.length,
                     itemBuilder: (context, index) => Padding(
                       padding: const EdgeInsets.only(bottom: 14),
                       child: OrderItem(order: order[index],),
                     ),
                   );

          }
          
          else if(snashot.hasError)
          {
             return CustomErrorWidget(error: snashot.error.toString());
          }
return Skeletonizer(
                  enabled:true,
                  child: ListView.builder(
                    itemCount:dummyOrders.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: OrderItem(order: dummyOrders[index],),
                    ),
                  ),
                );
         })
    );
  }
}