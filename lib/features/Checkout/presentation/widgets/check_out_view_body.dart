

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/function_hulper/implemenet_payment_with_different_method.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/check_out_page_view.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/check_out_step.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/handle_address_navigation_logic.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/function_helper/handle_shipping_navigation_logic.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/get_button_name.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/stripe_bloc_listener.dart';
import 'package:provider/provider.dart';



class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
  late PageController controller;
  int currentPage=0;
  

  @override
  void initState() {
 
    super.initState();

    controller=PageController();
    controller.addListener((){
currentPage=controller.page!.round();
setState(() {
  
});
    });
  }
  @override
  void dispose() {
  
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var orderEntity=context.read<OrderInputEntity>();
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
       SizedBox(height: 20.h,),
        CheckOutStep(controller: controller, orderInputEntity: orderEntity, currentPage: currentPage,),
      
     
   CheckOutPageView(controller: controller),

      StripeBlocListener(
        orderInputEntity: orderEntity,
        child: CustomButton(
         onPressed: () {
        
          if(currentPage==0)
          {
          handleShippingNavigationLogic(orderEntity, context,1,controller);
          }else if(currentPage==1)
          {
            handleAddressNavigationLogic(orderEntity, context,2,controller);
          }else if( currentPage==2 ){
        
            controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
          }
          else if(currentPage==3)
          {
            impelmentPaymentWithDifferntMethod(context: context,orderEntity: orderEntity,);
        
        
          
          }
         
          
           
          },
          text: getbuttonName(currentPage+1,orderEntity.paymentMethod??'')),
      ),
SizedBox(height: 30.h,)

        ],
      ),
    );
  }
  

}
  
  
  
