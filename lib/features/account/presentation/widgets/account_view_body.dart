

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/account/data/account_view_items_model.dart';
import 'package:fruitapp/features/account/presentation/widgets/account_view_body_item.dart';
import 'package:fruitapp/features/account/presentation/widgets/custom_list_tile.dart';
import 'package:fruitapp/features/account/presentation/widgets/limplement_og_out_widget.dart';
import 'package:fruitapp/features/account/presentation/widgets/user_image_and_some_info_about_user.dart';
import 'package:fruitapp/generated/l10n.dart';

class AccountViewBody extends StatefulWidget {
  const AccountViewBody({super.key});

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {

  @override
  Widget build(BuildContext context) {
    var accountItemsList=getaccountItemsList(context: context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserImageAndSomeInfoAboutUser(),
              SizedBox(height: 13.h),
              Text(S.current.general, style: AppStyle.semiBold13()),
              SizedBox(height: 16.h),
              AccountViewBodyItem(),
              SizedBox(height: 22.h),
              Text(S.current.help, style: AppStyle.semiBold13()),
              CustomizeListTailWidget(accountViewItemsModel: accountItemsList.last, index: accountItemsList.length),
            
            ],
          ),
        ),
        Spacer(),
        ImplementLogOutWidget()
        
        ,
        SizedBox(height: 33.h),
      ],
    );
  }
}



