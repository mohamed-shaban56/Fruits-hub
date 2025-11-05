import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shipping_section_body.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:provider/provider.dart';


class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
context.read<OrderInputEntity>().updateAppBar(S.current.shipping);
    });
  }
  
  @override
  
  Widget build(BuildContext context) {
    
    return ShippingSectionBody();
  }
}
