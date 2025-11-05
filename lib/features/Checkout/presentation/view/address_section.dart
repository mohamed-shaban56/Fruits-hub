import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';

import 'package:fruitapp/features/Checkout/presentation/widgets/address_section_body.dart';

import '../../../../generated/l10n.dart';

class AddressSection extends StatefulWidget {
  const AddressSection({super.key});

  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {

  @override
  void initState() {
   
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){

 context.read<OrderInputEntity>().updateAppBar( S.current.address);
    });
   

  }
  @override
  Widget build(BuildContext context) {
    return  AddressSectionBody();
  }
}