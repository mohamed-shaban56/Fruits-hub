


// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
// import 'package:fruitapp/core/utliz/function_hulper/api_keys.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
// import 'package:fruitapp/features/Checkout/domain/payment_entity/paypal_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
// import 'package:fruitapp/features/Checkout/presentation/view/success_payment_view.dart';


void paypalProcessPayment(BuildContext context,OrderInputEntity orderEntity)
{

// PaypalEntity paypalEntity=PaypalEntity.fromEntity(orderEntity,'USD');
  var addOrderRefrence=      context.read<AddOrderCubit>();
  
  addOrderRefrence.addOrder(orderEntity);
//   Navigator.of(context).push(MaterialPageRoute(
//                 builder: (BuildContext context) => PaypalCheckoutView(
//                   sandboxMode: true,
//                   clientId: ApiKeys.clientId,
//                   secretKey: ApiKeys.secretKey,
                  
//                   transactions:  [
//                  paypalEntity.toJson()
                  
//                   ],
//                   note: "Contact us for any questions on your order.",
//                   onSuccess: (Map params) async {
//                     log("onSuccess: $params");
//                      addOrderRefrence.addOrder(orderEntity);
//                     Navigator.pushNamed(context,SuccessPaymentView.routeName );
                   
//                   },
//                   onError: (error) {
//                     log("onError: $error");
//                     paypalEntity.dubbugError();
//                     Navigator.pop(context);
//                   },
//                   onCancel: () {
//                     log('cancelled:');
//                     Navigator.pop(context);
//                   },
//                 ),
//               ));
            
           
          
}