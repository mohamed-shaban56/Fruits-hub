import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/account/presentation/manager/user_info/cubit/update_user_data_cubit.dart';
import 'package:fruitapp/features/auth/domain/entity/update_user_data_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class MyAccountBody extends StatefulWidget {
  const MyAccountBody({super.key});

  @override
  State<MyAccountBody> createState() => _MyAccountBodyState();
}

class _MyAccountBodyState extends State<MyAccountBody> {
  late TextEditingController newEmailController;
  late TextEditingController newPasswordController;
  late TextEditingController currentPasswordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController newNameController;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    newEmailController = TextEditingController();
    newPasswordController = TextEditingController();
    newNameController = TextEditingController();
    currentPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Text(
                S.current.Personal_info,
                style: AppStyle.semiBold13(),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFild(
                controller: newNameController,
                hintText: S.current.full_name,
                textInputType: TextInputType.text,
                icon: Icons.edit,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFild(
                  controller: newEmailController,
                  hintText: S.current.email,
                  textInputType: TextInputType.text,
                  icon: Icons.edit),
              SizedBox(height: 16.h),
              Text(
                S.current.change_password,
                style: AppStyle.semiBold13(),
              ),
              SizedBox(height: 8.h),
              CustomTextFild(
                controller: currentPasswordController,
                hintText: S.current.current_password,
                textInputType: TextInputType.text,
                ispassword: true,
                maxLines: 1,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFild(
                controller: newPasswordController,
                hintText: S.current.new_password,
                textInputType: TextInputType.text,
                ispassword: true,
                maxLines: 1,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFild(
                controller: confirmPasswordController,
                hintText: S.current.confirm_new_password,
                textInputType: TextInputType.text,
                ispassword: true,
                maxLines: 1,
              ),
              SizedBox(
                height: 74.h,
              ),
              BlocConsumer<UpdateUserDataCubit, UpdateUserDataState>(
                builder: (context, state) {

                
                  return CustomButton(
                    text: S.current.save_changes,
                     isLoading: state is UpdateUserDataLoading?true:false,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        context.read<UpdateUserDataCubit>().saveUserInfo(
                            updateUserData: UpdateUserDataEntity(
                                newPassword: newPasswordController.text,
                                newEmail: newEmailController.text,
                                currentPassword: currentPasswordController.text,
                                confirmPassword: confirmPasswordController.text,
                                newName: newNameController.text));
                      }
                    },
                  );
                }, listener: (BuildContext context, UpdateUserDataState state) { 
                    
                     if(state is UpdateUserDataSuccess)
                  {
                  
                     userMessege(context:context, errorMessege:  S.current.account_updated_please_verify);
               
                  }
                 },
              )
            ],
          ),
        ),
      ),
    );
  }
}
