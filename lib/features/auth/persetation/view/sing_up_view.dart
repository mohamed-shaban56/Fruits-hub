import 'package:flutter/material.dart';
import 'package:fruitapp/core/widgets/build_appBar.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sign_up_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});
static const routName="sign up view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).SingUpTitle),
      body: SignUpBody(),
    );
  }
}