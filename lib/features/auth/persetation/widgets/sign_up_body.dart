import 'package:flutter/material.dart';

import 'package:fruitapp/features/auth/persetation/widgets/sign_up_form_validate.dart';


class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
 

late final  TextEditingController nameController;
late final TextEditingController emailController;
late final TextEditingController passwordController;
@override
  void initState() {
    super.initState();
    nameController=TextEditingController();
     emailController=TextEditingController();
      passwordController=TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child:SignUpFormValidate(nameController: nameController, emailController: emailController, passwordController: passwordController,)
      ),
    );
  }
}