import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/features/Checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';


class CheckOutViewBlocConsumer extends StatelessWidget {
  const CheckOutViewBlocConsumer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit,AddOrderState>(
      
      builder: (context,state)
      {
return  child;
      },
     listener: (context,state)
     {
      if(state is AddOrderFailure)
      {
        userMessege(context: context, errorMessege: state.error);
      }else if(state is AddOrderSuccess)
      {
        userMessege(context: context, errorMessege: 'order add in successfly');
      }

     });
  }
}