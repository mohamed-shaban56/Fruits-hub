import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/account/presentation/widgets/account_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.current.account,notifiactionEnabled: false,navigatorButtonEnabled: false),
      body: AccountViewBody(),
    );
  }
}