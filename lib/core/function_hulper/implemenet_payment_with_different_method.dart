  import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/core/utliz/cubit/strip_cubit/cubit/stripe_cubit.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/paypal_implementation.dart';

void impelmentPaymentWithDifferntMethod({ required BuildContext context  ,required OrderInputEntity orderEntity}) {
  var totalPrice=orderEntity.cartEntity.calculateTotalPrice().toInt();
if(orderEntity.paymentMethod==Constant.kpaypal)
{
paypalProcessPayment(context: context, orderEntity: orderEntity);
}else if(orderEntity.paymentMethod==Constant.kstripe)
{
 context.read<StripeCubit>().createPayment(StripePaymentModel(amount: (totalPrice*100).toInt(), currency: 'usd'));
}
  }