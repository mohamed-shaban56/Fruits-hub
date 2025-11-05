import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/widgets/custom_search_bar.dart';
import 'package:fruitapp/features/products/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_fiter.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_gride_view_bloc_builder.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16.h),
                CustomSearchBar(
                  onChanged: (value) {
                    context.read<ProductCubit>().getProducts(value);
                  },
                ),
                SizedBox(height: 16.h),
                ProductFiterWidget(
                  productLengt: 5,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            sliver: ProductGrideViewBlocBuilder()),
      ],
    );
  }
}
