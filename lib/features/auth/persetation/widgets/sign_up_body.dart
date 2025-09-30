import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_color.dart';
import 'package:fruitapp/core/app_style.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/widgets/custom_button.dart';
import 'package:fruitapp/features/auth/persetation/widgets/custom_checkBox.dart';
import 'package:fruitapp/features/auth/persetation/widgets/have_an_account.dart';
import 'package:fruitapp/generated/l10n.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24,),
            CustomTextFild(hintText: S.of(context).full_name, icon:Icons.person , textInputType: TextInputType.text),
            SizedBox(height: 16,),
              CustomTextFild(hintText: S.of(context).email, icon: Icons.email, textInputType: TextInputType.emailAddress),
               SizedBox(height: 16,),
                CustomTextFild(hintText:  S.of(context).password, icon: Icons.visibility, textInputType: TextInputType.number),
                SizedBox(height: 12,),
                
                Row(
                  children: [
                    CustomCheckbox(isChecked:isChecked , onchange: (bool value) { 
                    isChecked=value;
                     setState(() {
        
                          });
                     },),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: S.of(context).terms,style: AppStyle.semiBold13()
                              ),
                              TextSpan(text: S.of(context).condition,style: AppStyle.semiBold13().copyWith(color: AppColor.linkColor))
                            ])
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                ,
                SizedBox(height: 30,),
                
                CustomButton(text: S.of(context).create_account),
                
                SizedBox(height: 30,),  
                HaveAnAccount(onTap: () {
        Navigator.pop(context);
                },)       
                
                
          ],
        ),
      ),
    );
  }
}