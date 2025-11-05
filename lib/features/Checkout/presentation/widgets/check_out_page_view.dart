
import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/presentation/view/address_section.dart';
import 'package:fruitapp/features/Checkout/presentation/view/payment_section.dart';
import 'package:fruitapp/features/Checkout/presentation/view/review_section.dart';
import 'package:fruitapp/features/Checkout/presentation/view/shipping_section.dart';

class CheckOutPageView extends StatelessWidget {
  const CheckOutPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        
physics: NeverScrollableScrollPhysics(),
        controller:controller ,
        itemCount: getSections.length,
        itemBuilder: (context,indx)=>getSections[indx]),
    
    
    );
  }
}
List<Widget>getSections =[
  ShippingSection(),
  AddressSection(),
  PaymentSection(),
  ReviewSection()

];
