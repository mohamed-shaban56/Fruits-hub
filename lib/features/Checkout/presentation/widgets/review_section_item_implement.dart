
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/custom_review_divider.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/toatl_and_delivery_text.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/total_and_delevry_price.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/total_review_price.dart';

import 'package:provider/provider.dart';

class ReviewSectionItemImeplement extends StatelessWidget {
  const ReviewSectionItemImeplement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var orderEntity=context.read<OrderInputEntity>();

    return Column(
    children: [
      SizedBox(
        height: 15.h,),

        Row(
          children: [
 SubTotalAndDeliveryText(),
        Spacer(),

SubTotalAndDelevryPrice(orderEntity: orderEntity,)
          ],
        ),
       
      CustomReviewDivider(),
       TotalReviewPrice(orderEntity: orderEntity),
    ],
            );
  }


}






