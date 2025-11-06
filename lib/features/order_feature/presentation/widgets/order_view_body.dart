import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/get_dummy_order.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/get_order_cubit/get_order_cubit.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          BlocConsumer<GetOrderCubit, GetOrderState>(
            listener: (context, state) {
             
            },
            builder: (context, state) {
              if(state is OrderSuccess)
              {
                 return Expanded(
                child: ListView.builder(
                  itemCount: state.order.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: OrderItem(order: state.order[index],),
                  ),
                ),


              );
              }
              return Expanded(
                child: Skeletonizer(
                  enabled: state is OrderLoadig?true:false,
                  child: ListView.builder(
                    itemCount:dummyOrders.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: OrderItem(order: dummyOrders[index],),
                    ),
                  ),
                ),


              );
            
            },
          ),
        ],
      ),
    );
  }
}
