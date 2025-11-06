import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';
import 'package:fruitapp/features/order_feature/domain/repos/update_order_status_repo.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/get_order_cubit/get_order_cubit.dart';
import 'package:fruitapp/features/order_feature/presentation/manger/update_order/cubit/update_order_cubit.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
BlocProvider(
      create: (context) => GetOrderCubit(getIt<GetOrderRepo>())..getOrder(),),
      BlocProvider(
      create: (context) => UpdateOrderCubit(updateorderRepo: getIt<UpdateOrderStatusRepo>()),)
    ],
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: S.current.orders,
          notifiactionEnabled: false,
        ),
        body: OrderViewBody(),
      ),
    );
  }
}
