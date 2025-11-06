import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/success_payment_body.dart';
import 'package:fruitapp/generated/l10n.dart';


class SuccessPaymentView extends StatelessWidget {
  const SuccessPaymentView({super.key});
static const routeName="successPaymentview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.current.payment,notifiactionEnabled: false,navigatorButtonEnabled: false),
body: SuccessPaymentBody(),
      
    );
  }
}