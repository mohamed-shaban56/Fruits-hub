
import 'package:flutter/material.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_product_entity.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_product_image.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_product_quantity.dart';

class OrderProductItem extends StatelessWidget {
  const OrderProductItem({
    super.key,
    required this.orderProduct,
  });

  final OrderProductEntity orderProduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          OrderProductCode(code: orderProduct.code,),
          OrderProductQuantity(quantity: orderProduct.count,)
        ,
        OrderProductPrice(price: orderProduct.price.toString(),)
        
        ],
      ),
      Spacer(),
       OrderProductImage(imageUrl: orderProduct.imageUrl!,),
    ],
    
    
    );
  }
}

