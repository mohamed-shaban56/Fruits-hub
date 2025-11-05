import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({
    super.key,
  required this.shippingAddress
  });

  
final String shippingAddress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.current.shipping_address,style: AppStyle.bold16(),),
        Text(shippingAddress,style: AppStyle.bold16(),),
      ],
    );
  }
}