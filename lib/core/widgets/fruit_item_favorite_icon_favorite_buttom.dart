import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitapp/core/utliz/constant.dart';

import 'package:fruitapp/features/account/presentation/widgets/function_helper/add_function_favorite_logic.dart';
import 'package:fruitapp/features/dashbord/data/model/product_model.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:hive/hive.dart';

class FruitItemFavoriteButtom extends StatefulWidget {
  const FruitItemFavoriteButtom({super.key, required this.product});
  final ProductEntity product;
  @override
  State<FruitItemFavoriteButtom> createState() =>
      _FruitItemFavoriteButtomState();
}

class _FruitItemFavoriteButtomState extends State<FruitItemFavoriteButtom> {
  bool isSelected = false;
  late Box box;
  late ProductModel productModel;
  @override
  void initState() {
    super.initState();

    productModel = ProductModel.fromEntity(widget.product);
    box = Hive.box<ProductModel>(Constant.kfavoriteIProudct);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        setState(() {
          isSelected = !isSelected;
        });
        addFavoriteItemLogic(
            isSelected: isSelected, productModel: productModel, box: box);
      },
      icon: Icon(
          color: Colors.red,
          isSelected == false
              ? FontAwesomeIcons.heart
              : FontAwesomeIcons.solidHeart),
    );
  }
}
