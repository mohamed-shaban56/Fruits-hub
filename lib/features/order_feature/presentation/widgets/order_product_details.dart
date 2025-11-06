import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_product_entity.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_products_item.dart';

import 'package:fruitapp/generated/l10n.dart';

class OrderProductDetails extends StatelessWidget {
  const OrderProductDetails({
    super.key, required this.orderProducts,
  });
final List<OrderProductEntity> orderProducts;
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.sizeOf(context).height;
    double width =MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Text("${S.current.products} :",style: AppStyle.bold16(),),
     SizedBox(height: 10.h,),

     SizedBox(
      height: height/10.7,
       child: ListView.builder(
        itemCount: orderProducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>Container(
      width: width-70,
          child:  OrderProductItem(orderProduct: orderProducts[index]),
        )))
   
      ],
    );
  }
}
