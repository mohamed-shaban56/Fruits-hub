import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/get_total_price.dart';
import 'package:fruitapp/generated/l10n.dart';


class TotalReviewPrice extends StatelessWidget {
  const TotalReviewPrice({
    super.key,
    required this.orderEntity,
  });

  final OrderInputEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
        
       Text('${S.current.total} :',style: AppStyle.bold16(),),
       Spacer(),
        Text("${getReviewTotalPrice(orderEntity)} ${S.current.price}",style: AppStyle.bold16(),),
     ],
        
          );
  }
}