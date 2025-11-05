import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/delivery_address.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/delivery_address_implement.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/revew_section_item.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/review_section_item_implement.dart';
import 'package:provider/provider.dart';



class ReviewSectionBody extends StatefulWidget {
  const ReviewSectionBody({super.key, });

  @override
  State<ReviewSectionBody> createState() => _ReviewSectionBodyState();
}

class _ReviewSectionBodyState extends State<ReviewSectionBody> {
 
  @override
  void initState() {
 
    super.initState();

  
  }

  @override
  Widget build(BuildContext context) {
   var orderEntity=context.read<OrderInputEntity>();
 
    return Column(
      children: [
        ReviewSectionItem(
        child: ReviewSectionItemImeplement(),),
     SizedBox(height: 16.h,),
       DeliveryAddress(
        child:
        ChangeNotifierProvider.value(
          
          value: orderEntity.addressEntity,
          child: DeliveryAddressImplement()))
      ],
    );
  }
}
