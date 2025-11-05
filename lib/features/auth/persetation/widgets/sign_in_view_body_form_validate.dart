

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/text_with_divider.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/core/utliz/widgets/social_button.dart';
import 'package:fruitapp/features/auth/persetation/manger/signInCubit/sign_in_cubit.dart';
import 'package:fruitapp/features/auth/persetation/view/sing_up_view.dart';
import 'package:fruitapp/features/auth/persetation/widgets/dont_have_an_account.dart';
// import 'package:fruitapp/features/auth/persetation/view/sing_up_view.dart';
// import 'package:fruitapp/features/auth/persetation/widgets/dont_have_an_account.dart';
import 'package:fruitapp/generated/l10n.dart';

class SingInViewBodyFormValidate extends StatelessWidget {
  const SingInViewBodyFormValidate({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: isArabic(context)?CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
        SizedBox(height: 24,),
       CustomTextFild(
        controller:emailController ,
        hintText: S.of(context).email, icon: Icons.email,textInputType: TextInputType.emailAddress,) ,
      
       SizedBox(height: 16,),
      
          CustomTextFild(
            controller: passwordController,
            hintText: S.of(context).password, icon: Icons.visibility,textInputType: TextInputType.text,ispassword: true,maxLines: 1,) ,
      
          SizedBox(height: 16,),
          Text(S.of(context).forgotPassword,style: AppStyle.semiBold13().copyWith(color:AppColor.linkColor)),
           SizedBox(height: 33,),
      
           CustomButton(
            onPressed: (){
              if(formKey.currentState!.validate())
              {
                context.read<SignInCubit>().signInWithEmailAndPassword( password:passwordController.text , email: emailController.text);
              }
              emailController.clear();
              passwordController.clear();
            },
            text: S.of(context).loginButton,),
      
             SizedBox(height: 33,),
      
             DontHaveAnAcountText(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpView()));
             },),
              SizedBox(height: 33,),
            ORDivider(),
             SizedBox(height: 31,),
             SocialButton(
              onTap: () {
                context.read<SignInCubit>().singinWithGoogle();
              },
              title: S.of(context).loginWithGoogle,  image: Assets.assetsImagesGoogleIcon,),
              SizedBox(height: 16,),
             SocialButton(
              onTap: () {
                context.read<SignInCubit>().singInWithGitHub();
              },
              title: S.of(context).loginWithApple,  image:Assets.assetsImagesGithub,),
                SizedBox(height: 16,),
             SocialButton(
              onTap: () {
                 context.read<SignInCubit>().singInwithFaceBook();
              },
              title: S.of(context).loginWithFacebook,  image: Assets.assetsImagesFaceIcon,),
      
        ],
      ),
    );
  }
}
