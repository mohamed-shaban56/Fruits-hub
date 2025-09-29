import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_color.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/core/app_style.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/widgets/custom_button.dart';
import 'package:fruitapp/core/widgets/social_button.dart';
import 'package:fruitapp/features/auth/persetation/widgets/have_an_account.dart';
import 'package:fruitapp/core/text_with_divider.dart';
import 'package:fruitapp/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: isArabic(context)?CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
          SizedBox(height: 24,),
        
         CustomTextFild(hintText: S.of(context).email, icon: Icon(Icons.email,color:  Color(0xffC9CECF),),textInputType: TextInputType.emailAddress,) ,
        
         SizedBox(height: 16,),
        
            CustomTextFild(hintText: S.of(context).password, icon: Icon(Icons.visibility,color: Color(0xffC9CECF),),textInputType: TextInputType.number,ispassword: true,) ,
        
            SizedBox(height: 16,),
            Text(S.of(context).forgotPassword,style: AppStyle.semiBold13().copyWith(color:AppColor.linkColor)),
             SizedBox(height: 33,),
        
             CustomButton(text: S.of(context).loginButton,),
        
               SizedBox(height: 33,),
        
               HaveAnAcountText(),
                SizedBox(height: 33,),
              TextWithDivider(),
               SizedBox(height: 31,),
               SocialButton(title: S.of(context).loginWithGoogle,  image: Assets.assetsImagesGoogleIcon,),
                SizedBox(height: 16,),
               SocialButton(title: S.of(context).loginWithApple,  image: Assets.assetsImagesAppleIcon,),
                  SizedBox(height: 16,),
               SocialButton(title: S.of(context).loginWithFacebook,  image: Assets.assetsImagesFaceIcon,),
        
          ],
        ),
      ),
    );
  }
}
