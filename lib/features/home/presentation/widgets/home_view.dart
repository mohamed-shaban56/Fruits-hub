import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/presentation/manager/product_cubit/best_selling_product_cubit.dart';
import 'package:fruitapp/features/home/presentation/widgets/home_appbar.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:fruitapp/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var isA = isArabic(context);
    return Scaffold(
      appBar: homeAppBar(isA),
      body: BlocProvider(
        create: (context) => BestSellingProductCubit(productRepo: getIt<ProductRepo>())..getBestSellingProducts(),
        child: HomeViewBody(isA: isA),
      ),
    );
  }
}
