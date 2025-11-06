import 'package:flutter/material.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_view_body.dart';

class FruitItemDetailsView extends StatelessWidget {
  const FruitItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FruitItemDetailsViewBody(),
    );
  }
}