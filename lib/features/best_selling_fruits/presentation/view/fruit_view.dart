import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/dummy_product.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/products/presentation/widgets/product_gride_view.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitView extends StatelessWidget {
  const FruitView({super.key});
static const routeName="fruitview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.current.best_selling),
      body: CustomScrollView(
        slivers: [
          ProductGrideView(products: getDummyProduct(),),
        ],
      ),
    );
  }
}