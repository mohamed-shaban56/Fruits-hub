import 'package:flutter/material.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sign_in_view_body_form_validate.dart';


class SingInViewBody extends StatefulWidget {
  const SingInViewBody({super.key});

  @override
  State<SingInViewBody> createState() => _SingInViewBodyState();
}

class _SingInViewBodyState extends State<SingInViewBody> {
late  TextEditingController emailController;
late  TextEditingController passwordController;
GlobalKey<FormState>formKey=GlobalKey<FormState>();
@override
  void initState() {
    super.initState();
    emailController=TextEditingController();
    passwordController=TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: SingInViewBodyFormValidate(formKey: formKey, emailController: emailController, passwordController: passwordController),
      ),
    );
  }
}
