import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/check_out_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});
static const routeName="checkOutview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.current.shipping,isNotifiactionEnabled: false),
      body: CheckOutViewBody(),
    );
  }
}