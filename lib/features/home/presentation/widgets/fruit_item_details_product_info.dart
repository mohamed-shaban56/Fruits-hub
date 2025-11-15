
import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_image2.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/home/presentation/widgets/fruit_item_product_details_item.dart';
import 'package:fruitapp/features/home/presentation/widgets/function_helper/get_average_rating.dart';
import 'package:fruitapp/generated/l10n.dart';

class FruitItemDetailsAllProductDetailsInfo extends StatelessWidget {
  const FruitItemDetailsAllProductDetailsInfo({
    super.key,required this.product
  });
final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
    Row(
      children: [
    Expanded(child: FruitItemProductDetailsInfo(image: AppImage2.assetImageCalender, title: S.current.product_expiry, info: "${product.experationMonths.toString()} ${S.current.Days}",)),
    SizedBox(width: 16,),
    Expanded(child: FruitItemProductDetailsInfo(image: AppImage2.assetImageOrganic, title: S.current.product_category_organic, info: '% ${product.organicPercentage}',)),
      ],
    ),
    SizedBox(height: 16,),
    Row(
      children: [
    Expanded(child: FruitItemProductDetailsInfo(image: AppImage2.assetImageCalory, title: S.current.product_weight, info: '${product.numOfcolories} ${S.current.Calory}',)),
    SizedBox(width: 16,),
    Expanded(child: FruitItemProductDetailsInfo(image: AppImage2.assetImageStar, title: S.current.review, info: getAverageRating(newValue: (product.productPrice/10).toInt()).toString(),)),
      ],
    ),
      ],
    );
  }
}