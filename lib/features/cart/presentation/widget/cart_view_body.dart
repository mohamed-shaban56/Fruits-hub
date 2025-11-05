import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_custom_button.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_header_widget.dart';
import 'package:fruitapp/features/cart/presentation/widget/cart_item_sliver_list_bloc_builder.dart';
import 'package:fruitapp/features/cart/presentation/widget/custom_divider.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
   final cartEntity=context.watch<CartCubit>().cartEntity;
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 8.h)),
            SliverToBoxAdapter(
              child: CartHeaderWidget(
                lenght:cartEntity. cartItems.length,
              ),
            ),

            SliverToBoxAdapter(child: CustomDivider()),
            CartItemSliverlistBlocBuilder(),
            SliverToBoxAdapter(child: CustomDivider()),
          ],
        ),

        Positioned(
          bottom: 67.h,
          left: 16,
          right: 16,
          child: CartCustomButton(cartEntity: cartEntity,),
        ),
      ],
    );
  }
}

