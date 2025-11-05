import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/account/presentation/manager/user_sing_out/user_sing_out_cubit.dart';
import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
import 'package:fruitapp/generated/l10n.dart';


class ImplementLogOutWidget extends StatelessWidget {
  const ImplementLogOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            context.read<UserSignOutCubit>().userSingOut();
            SharedPrefrenceSinglton.seLoggedIn(false);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>SingInView()));
            
          },
          child: Container(
            height: 42.h,
            width: double.infinity,
            color: AppColor.backgroundLightGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Spacer(),
                Text(S.current.logout,style: AppStyle.semiBold13().copyWith(color: AppColor.primaryColor),),
             Spacer(),
                SvgPicture.asset(Assets.existImage),
                SizedBox(width: 40.w,)
              ],
            ),
          ),
        );
  }
}

