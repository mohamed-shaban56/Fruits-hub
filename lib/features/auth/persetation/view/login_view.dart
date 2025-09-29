import 'package:flutter/material.dart';
import 'package:fruitapp/core/widgets/build_appBar.dart';
import 'package:fruitapp/features/auth/persetation/widgets/login_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routName="loginView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,title: S.of(context).loginTitle),
      body: LoginViewBody( ),
    );
  }

  
}