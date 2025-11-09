import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:fruitapp/core/utliz/widgets/custom_search_bar.dart';
import 'package:fruitapp/features/home/presentation/manager/product_cubit/best_selling_product_cubit.dart';
import 'package:fruitapp/features/home/presentation/widgets/best_selling_grideview_bloc_builder.dart';
import 'package:fruitapp/features/home/presentation/widgets/bset_seller_widget.dart';
import 'package:fruitapp/features/home/presentation/widgets/offeres_listView.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.isA});

  final bool isA;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
          
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomSearchBar(

                  onChanged:(value) {
                 context.read<BestSellingProductCubit>().getBestSellingProducts(value);
                  },
                ),
              ),
              SizedBox(height: 12.h),
         
              OfferesListview(),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(
                  left: isA ? 16.w : 17.w,
                  right: isA ? 17.w : 16.w,
                ),
                child: BsetSellerWidget(),
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
       
       SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 16),
       sliver: BestSellingGrideviewBlocBuilder())
      ],
    );
  }
}

