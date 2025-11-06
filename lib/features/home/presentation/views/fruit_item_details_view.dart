import 'package:flutter/material.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_details_view_body.dart';

class FruitItemDetailsView extends StatelessWidget {
  const FruitItemDetailsView({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: FruitItemDetailsViewBody(imageUrl: imageUrl,),
    );
  }
}