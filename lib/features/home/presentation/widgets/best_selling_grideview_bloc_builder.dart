
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/dummy_product.dart';
import 'package:fruitapp/core/utliz/widgets/custom_error_widget.dart';
import 'package:fruitapp/features/home/presentation/manager/product_cubit/best_selling_product_cubit.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_gride_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGrideviewBlocBuilder extends StatelessWidget {
  const BestSellingGrideviewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<BestSellingProductCubit, BestSellingProductState>(
      builder: (context, state) {
        if(state is BestSellingProductSuccess)
        {
          return ProductGrideView(products: state.bestSellingProducts,);
        }
      else  if(state is BestSellingProductFailure)
        {
          return SliverToBoxAdapter(
            child:CustomErrorWidget(error: 'there is no item') ,
          );
        }
       return Skeletonizer.sliver(
       enabled: state is BestSellingProductLoading?true:false,
       child: ProductGrideView( products:getDummyProduct()),);
      },
    );
  }
}