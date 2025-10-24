import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/constant.dart';

import 'package:fruitapp/features/account/presentation/widgets/favorite_fruite_item.dart';
import 'package:fruitapp/features/dashbord/data/model/product_model.dart';

import 'package:hive/hive.dart';

class FavoriteViewBody extends StatefulWidget {
  const FavoriteViewBody({super.key});

  @override
  State<FavoriteViewBody> createState() => _FavoriteViewBodyState();
}

class _FavoriteViewBodyState extends State<FavoriteViewBody> {
  late List<ProductModel> favoriteBox;
  @override
  void initState() {
    super.initState();
    favoriteBox=Hive.box<ProductModel>(Constant.kfavoriteIProudct).values.toList();
    log(favoriteBox.length.toString());
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: GridView.builder(
        itemCount: favoriteBox.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      mainAxisSpacing: 10,crossAxisSpacing: 20,childAspectRatio: 163/214),
       itemBuilder: (context,index)=>FavoriteFruiteItem(productItem:favoriteBox[index].toEntity() )),
    );
  }
}