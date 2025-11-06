
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/dummy_product.dart';
import 'package:fruitapp/features/products/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_gride_view.dart';

class ProductGrideViewBlocBuilder extends StatelessWidget {
  const ProductGrideViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess)
        {
      return ProductGrideView(products: state.allProducts);
        }
     return   ProductGrideView(products: getDummyProduct());
      },
    );
  }
}
  