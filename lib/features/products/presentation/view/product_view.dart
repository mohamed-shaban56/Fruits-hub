import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:fruitapp/features/products/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static const routeName = "productView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(productRepo: getIt<ProductRepo>())..getProducts(),
      child: Scaffold(
        appBar:buildAppBar(context, title: S.current.product,navigatorButtonEnabled: false),
        body: ProductViewBody(),
      ),
    );
  }
}
