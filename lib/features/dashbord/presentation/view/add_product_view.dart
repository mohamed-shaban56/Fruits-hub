import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/dashbord_appBar.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/features/dashbord/domain/repo/image_repo/image_repo.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:fruitapp/features/dashbord/presentation/manger/add_product/add_product_cubit.dart';
import 'package:fruitapp/features/dashbord/presentation/widget/add_product_view_bloc_consumer.dart';


class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = "addProduct";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProductCubit(
        fileImageRepo: getIt<FileImageRepo>(),
        productRepo: getIt<ProductRepo>(),
      ),
      child: Scaffold(
        appBar: dashBordAppBar(context, title: 'Add Product'),
        body: AddProductViewBlocConsumer(),
      ),
    );
  }
}
