import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/strip_cubit/cubit/stripe_cubit.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
import 'package:fruitapp/features/Checkout/presentation/view/success_payment_view.dart';

class StripeBlocListener extends StatelessWidget {
  const StripeBlocListener({super.key,required this. child, required this.orderInputEntity});
final Widget child;
final OrderInputEntity orderInputEntity;
  @override
  Widget build(BuildContext context) {
      var addOrderRefrence=      context.read<AddOrderCubit>();
    return BlocListener<StripeCubit, StripeState>(
      listener: (context, state) async{
        if(state is StripeSuccess)
        {
                 await  addOrderRefrence.addOrder(orderInputEntity);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPaymentView()));
        }
      },
      child: child,
    );
  }
}