import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit_total_price/cart_cubit_total_price.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const routeName = "shoppingView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubitTotalPrice(),
      child: Scaffold(
        appBar: buildAppBar(context,
            title: S.current.cartappbar, notifiactionEnabled: false),
        body: CartViewBody(),
      ),
    );
  }
}
