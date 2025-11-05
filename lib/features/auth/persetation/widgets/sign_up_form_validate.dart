import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/auth/persetation/manger/signUpCubit/sing_up_cubit.dart';
import 'package:fruitapp/features/auth/persetation/widgets/custom_checkBox.dart';
import 'package:fruitapp/features/auth/persetation/widgets/have_an_account%20.dart';
import 'package:fruitapp/generated/l10n.dart';

class SignUpFormValidate extends StatefulWidget {
  const SignUpFormValidate({super.key, required this.nameController, required this.emailController, required this.passwordController});
final TextEditingController nameController,emailController,passwordController;
  @override
  State<SignUpFormValidate> createState() => _SignUpFormValidateState();
}

class _SignUpFormValidateState extends State<SignUpFormValidate> {
   bool isChecked=false;
   GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Form(
          key:formKey ,
          child: Column(
            children: [
              SizedBox(height: 24,),
              CustomTextFild(
                controller: widget.nameController,
                hintText: S.of(context).full_name, icon:Icons.person , textInputType: TextInputType.text),
              SizedBox(height: 16,),
                CustomTextFild( controller: widget.emailController,    hintText: S.of(context).email, icon: Icons.email, textInputType: TextInputType.emailAddress),
                 SizedBox(height: 16,),
                  CustomTextFild(controller: widget.passwordController, hintText:  S.of(context).password, icon: Icons.visibility, textInputType: TextInputType.text,ispassword: true,maxLines: 1,),
                  SizedBox(height: 12,),
                  
                  CustomCheckbox(isChecked:isChecked , onchange: (bool value) { 
                  
                   setState(() {
                       isChecked=value;     
                        });
                   },),
                  
                  SizedBox(height: 30,),
                  
                  CustomButton(
                    onPressed: (){

                              if(formKey.currentState!.validate())
                                   {
                                  if(isChecked)
                                  {
                                    context.read<SingUpCubit>().createUserWithEmailAndPassword(name: widget.nameController.text, password: widget.passwordController.text, email: widget.emailController.text);

                                  }else{
                                    userMessege(context: context, errorMessege: S.current.termsRequired);
                                  }
                                    
                                }
                               widget. nameController.clear();
                               widget. emailController.clear();
                              widget.  passwordController.clear();
                    },
                    text: S.of(context).create_account),
                  
                  SizedBox(height: 30,),  
                  HaveAnAccount(onTap: () {
         
                   Navigator.pop(context);
                  },)       
                  
                  
            ],
          ),
        );
  }
}