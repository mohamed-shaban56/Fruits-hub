import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/strip_cubit/cubit/stripe_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/core/utliz/repo/stripe_repo/stripe_repo.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/check_out_view_body.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_entity.dart';

import 'package:provider/provider.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key, required this.cartEntity});
  static const routeName = "checkOutview";
  final CartEntity cartEntity;

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  late OrderInputEntity orderInputEntity;
  @override
  void initState() {
    super.initState();
    orderInputEntity = OrderInputEntity(cartEntity: widget.cartEntity);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: orderInputEntity,
      child: BlocProvider(
        create: (context) => StripeCubit(stripeRepo: getIt<StripeRepo>()),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 40),
            child: Consumer<OrderInputEntity>(
              builder: (BuildContext context, OrderInputEntity orderEntity,
                  Widget? child) {
                return buildAppBar(
                  context,
                  title: orderEntity.appBarTitle ?? '',
                  notifiactionEnabled: false,
                );
              },
            ),
          ),
          body: const CheckOutViewBody(),
        ),
      ),
    );
  }
}
