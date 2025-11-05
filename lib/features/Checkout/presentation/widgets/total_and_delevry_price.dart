import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/get_review_price.dart';
import 'package:fruitapp/generated/l10n.dart';


class SubTotalAndDelevryPrice extends StatelessWidget {
  const SubTotalAndDelevryPrice({super.key, required this.orderEntity});
final OrderInputEntity orderEntity;
  @override
  Widget build(BuildContext context) {
    return 
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
 Text('${getReviewPrice(orderEntity)} ${S.current.price} ',style: AppStyle.semiBold16()),
 Text('40 جنيه',style: AppStyle.regular13().copyWith(color: Colors.black.withOpacity(.5)),),
          ],
        );
  }
}