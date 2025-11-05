
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit_total_price/cart_cubit_total_price.dart';
import 'package:provider/provider.dart';





class QuantityControllWidget extends StatefulWidget {
  const QuantityControllWidget({
    super.key,required this.cartProduct,
  });
final CartItemEntity cartProduct;

  @override
  State<QuantityControllWidget> createState() => _QuantityControllWidgetState();
}

class _QuantityControllWidgetState extends State<QuantityControllWidget> {
  int productNumber=1;

  @override
  Widget build(BuildContext context) {
    var cartEntity=context.read<CartCubit>().cartEntity;
    return Row(
      children: [
        
         AddRemoveButton(
          onTap: () {
            
setState(() {
 widget.cartProduct.increamentCount();  
});
           

         context.read<CartCubitTotalPrice>().calcltateTotalPrice(cartEntity.calculateTotalPrice());
         log(cartEntity.calculateTotalPrice().toString());
          
          },
          radius: 16, backGroundcolor: AppColor.primaryColor, icon: Icons.add, iconColor: Colors.white,),
        SizedBox(width: 16.w,),
       Text(widget.cartProduct.quantity.toString(),style: AppStyle.bold16(),),
       SizedBox(width: 16.w,),
        AddRemoveButton(
          onTap: () {

           widget.cartProduct.decreamentCount();

            context.read<CartCubitTotalPrice>().calcltateTotalPrice(cartEntity.calculateTotalPrice());
           setState(() {
             
           });
          },
          radius: 16, backGroundcolor: AppColor.gryColor, icon: Icons.remove ,iconColor: AppColor.primaryColor,
        
        
            ),
           Spacer(),
          Text(widget.cartProduct.calculateTotalPrice().toString(),style: AppStyle.bold16().copyWith(color: AppColor.secondColor),)
            ],
        );
  }
}
