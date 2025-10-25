import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/account/data/account_view_items_model.dart';
import 'package:fruitapp/features/account/presentation/view/abut_us_view.dart';
import 'package:fruitapp/features/account/presentation/view/favorit_view.dart';
import 'package:fruitapp/features/home/presentation/widgets/language_dialog.dart';
import 'package:fruitapp/features/order_feature/presentation/views/order_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomListTail extends StatelessWidget {
  const CustomListTail({
    super.key,
    required this.accountViewItemsModel,
    required this.index,
  });
  final AccountViewItemsModel accountViewItemsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(accountViewItemsModel.image),
          title: Text(
            accountViewItemsModel.title,
            style: AppStyle.semiBold13().copyWith(color: Color(0xff949D9E)),
          ),
          trailing: IconButton(
            onPressed: () {
              if (index == 1) {
                navigateTOrderView(context);
              } 
               else if (index == 2) {
                navigateToFavoriteView(context);
              } 
              
              else if (index == 4) {
                navigateToLanguageView(context);
              }

             else if (index == 6) {
                navigateToAboutUs(context);
              }
            },
            icon: Icon(accountViewItemsModel.icon),
          ),
        ),
        Divider(color: Color(0xffF2F3F3)),
      ],
    );
  }

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
}
