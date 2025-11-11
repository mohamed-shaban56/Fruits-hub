
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';
// import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/build_show_modle_buttom_sheet.dart';
// import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:provider/provider.dart';


class DeliveryAddressImplement extends StatelessWidget {
  const DeliveryAddressImplement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    var addresEntity=context.watch<AddressEntity>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      child: Column(
        children: [
          Row(
          children: [
            Text(S.current.delivery_address,),
          Spacer(),
          
             SizedBox(
              height: 22.h,
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {  
                 buildShowModelButtomSheet(context,addresEntity);
      
                }, icon: Icon(Icons.edit,size: 20,)
                 
                 ),
               Text(S.current.edit) ,
                ],
               ),
             )
              
              
          ],
                 ),
        SizedBox(height: 8.h,),
      Row(
        children: [
          Image.asset(Assets.location,color: AppColor.reviewItemSectionLocationColor(context),),
          SizedBox(width: 5,),
          
          Text(addresEntity.toString(),)
        ],
      )
        ],
      ),
    );
  }

  
  
}
