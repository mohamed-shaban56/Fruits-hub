
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/Checkout/presentation/view/check_out_view.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomButtomBlocBuilder extends StatelessWidget {
  const CustomButtomBlocBuilder({
    super.key,
    required this.hasItems,
    required this.cartCubit,required this.totalPrice
  });

  final bool hasItems;
  final CartCubit cartCubit;
final num totalPrice;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
                 onPressed: () {

                   if (hasItems) {
                     PersistentNavBarNavigator.pushNewScreen(
                       context,
                       screen: CheckOutView(cartEntity: cartCubit.cartEntity),
                       withNavBar: false,
                     );
                   } else {
                     userMessege(
                       context: context,
                       errorMessege: S.current.cannot_go_to_order_page,
                     );
                   }
                 },
                 text:
                     'الدفع$totalPrice جنيه',
               );
  }
}
