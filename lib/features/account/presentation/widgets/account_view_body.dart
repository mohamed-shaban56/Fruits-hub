import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/account/data/account_view_items_model.dart';
import 'package:fruitapp/features/account/presentation/manager/cubit/user_sing_out_cu%D9%84%D8%A7it.dart';
import 'package:fruitapp/features/account/presentation/widgets/account_view_user_info..dart';
import 'package:fruitapp/features/account/presentation/widgets/custom_list_tile.dart';
import 'package:fruitapp/features/account/presentation/widgets/log_out_widget.dart';
import 'package:fruitapp/features/account/presentation/widgets/user_image.dart';
import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class AccountViewBody extends StatefulWidget {
  AccountViewBody({super.key});

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  UserImage(),
                  SizedBox(width: 24.w),
                  AccountViewUserInfo(),
                ],
              ),
              SizedBox(height: 13.h),
              Text(S.current.general, style: AppStyle.semiBold13()),
              SizedBox(height: 16.h),
              Column(
                children: List.generate(
                  accountItemsList.length - 1,
                  (index) => CustomListTail(
                    accountViewItemsModel: accountItemsList[index],
                    index: index,
                  ),
                ).toList(),
              ),

              SizedBox(height: 22.h),
              Text(S.current.help, style: AppStyle.semiBold13()),
              CustomListTail(
                accountViewItemsModel: accountItemsList.last,
                index: accountItemsList.length,
              ),
            ],
          ),
        ),
        Spacer(),
        BlocConsumer<UserSignOutCubit, UserSingOutState>(
          listener: (context, state) {
           if(state is UserSingOutSuccess)
           {
            SharedPrefrenceSinglton.seLoggedIn(false);
          
            PersistentNavBarNavigator.pushNewScreen(context, screen:SingInView() ,withNavBar: false);
           }
           else if(state is UserSingOutFailure)
           {
            log('error in account view body:${state.error}');
           }
          },
          builder: (context, state) {
            
            return ModalProgressHUD(
              inAsyncCall: state is UserSingOutLoading? true:false,
              child: LogOutWidget(
                onTap: () {
                  
                  context.read<UserSignOutCubit>().userSingOut();
                },
                title:S.current.logout,
              ),
            );
          },
        ),
        SizedBox(height: 33.h),
      ],
    );
  }
}
