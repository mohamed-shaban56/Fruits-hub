import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';


class SubTotalAndDeliveryText extends StatelessWidget {
  const SubTotalAndDeliveryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text('${S.current.subtotal} :',style: AppStyle.regular13().copyWith(color: AppColor.reviewItemTextColor(context)),),
    
              Text('${S.current.delivery} :',style: AppStyle.regular13().copyWith(color: AppColor.reviewItemTextColor(context)),),
             ],
           );
  }
}