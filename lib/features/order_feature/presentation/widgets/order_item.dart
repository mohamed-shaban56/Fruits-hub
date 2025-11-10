import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/enum/order_status_enum.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_action_buttom.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/order_product_details.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/payment_method.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/shipping_address.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/total_price_and_order_status.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/user_name.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key, required this.order,

  });

final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return Card(
      elevation: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.orderViewItemBackground(context),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TotalPriceAndOrderStatus(totalPrice: order.totalPrice, orderStatus: order.orderStatus??OrderStatusEnum.pending.name,),
              SizedBox(height: 10.h,),
              UserName(isA: isA, userName: order.addressModel.fullName,),
           SizedBox(height: 10.h,),
            ShippingAddress(shippingAddress: order.addressModel.toString()),
             SizedBox(height: 5.h,),
          PaymentMethod(isA: isA, paymentType: order.paymentMethod,),
          OrderProductDetails(orderProducts: order.orderProduct,),
          SizedBox(height: 20,),
          OrderActionButtom(orderStatus: order.orderStatus??OrderStatusEnum.pending.name, orderId: order.orderId,)
            ],
          ),
        ),
      ),
    );
  }
}

