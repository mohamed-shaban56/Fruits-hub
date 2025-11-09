

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/app_color.dart';


import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/account/data/account_view_items_model.dart';
import 'package:fruitapp/features/account/presentation/manager/them_cubit/cubit/them_cubit.dart';
import 'package:fruitapp/features/account/presentation/view/abut_us_view.dart';
import 'package:fruitapp/features/account/presentation/view/favorit_view.dart';
import 'package:fruitapp/features/account/presentation/view/my_account.dart';
import 'package:fruitapp/features/home/presentation/widgets/language_dialog.dart';
import 'package:fruitapp/features/order_feature/presentation/views/order_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

  void navigateToAboutUs(BuildContext context) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: AbutUsView(),
      withNavBar: false,
    );
  }

  void navigateToFavoriteView(BuildContext context) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: FavoritView(),
      withNavBar: false,
    );
  }
  void navigateToMyAccountView(BuildContext context) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: MyAccount(),
      withNavBar: false,
    );
  }

  void navigateToLanguageView(BuildContext context) {
    showDialog(context: context, builder: (context) => const LanguageDialog());
  }

  void navigateTOrderView(BuildContext context) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: OrderView(),
      withNavBar: false,
    );
  }


class CustomizeListTailWidget extends StatefulWidget {
  const CustomizeListTailWidget({
    super.key, required this.accountViewItemsModel, required this.index,
  });
  final AccountViewItemsModel accountViewItemsModel;
  final int index;

  @override
  State<CustomizeListTailWidget> createState() => _CustomizeListTailWidgetState();
}

class _CustomizeListTailWidgetState extends State<CustomizeListTailWidget> {
  bool isEnabaled=false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SizedBox(
            width: 20,
            child: Image.asset(widget.accountViewItemsModel.image,color:AppColor.primaryColor,)),
          title: Text(
            widget.accountViewItemsModel.title,
            style: AppStyle.semiBold13().copyWith(color: Color(0xff949D9E)),
          ),
          trailing: IconButton(
            onPressed: () {
              if(widget.index==0)
              {
              navigateToMyAccountView(context);
              }
             else if (widget.index == 1) {
                navigateTOrderView(context);
              } 
               else if (widget.index == 2) {
                navigateToFavoriteView(context);
              } 
                else if(widget.index==3)
                {
                  setState(() {
                  isEnabaled=!isEnabaled;
                });
                context.read<ThemCubit>().toggleThem();
                }
              
              else if (widget.index == 4) {
                navigateToLanguageView(context);
              }

             else if (widget.index == 6) {
                navigateToAboutUs(context);
              }
            },
            icon:widget.index==3?  Icon(isEnabaled?Icons.dark_mode:Icons.light_mode) :
              Icon(widget.accountViewItemsModel.icon),
          ),
        );
  }
  
 
}