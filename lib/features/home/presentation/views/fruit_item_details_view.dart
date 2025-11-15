import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_view_body.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class FruitItemDetailsView extends StatelessWidget {
  const FruitItemDetailsView({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: context.read<CartCubit>(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: FruitItemDetailsViewBody(
            product: product,
          ),
        ),
      ),
    );
  }
}
