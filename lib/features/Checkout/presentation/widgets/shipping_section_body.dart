import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/shipping_section_item.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:provider/provider.dart';

class ShippingSectionBody extends StatefulWidget  {
  const ShippingSectionBody({super.key});

  @override
  State<ShippingSectionBody> createState() => _ShippingSectionBodyState();
}

class _ShippingSectionBodyState extends State<ShippingSectionBody> with AutomaticKeepAliveClientMixin{
    int selectedShippinItem=-1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var orderEntity=context.read<OrderInputEntity>();
    return Column(
      children: [
        SizedBox(height: 33.h,),

        ShippingSectionItem(
          onTap:(){
            
            setState(() {
              selectedShippinItem=0;
            });
          orderEntity.isPayWithCash=true;
          }, isSelected: selectedShippinItem==0, title: S.current.checkout_cash_on_delivery, subTitle: S.current.checkout_delivery_from, price: (orderEntity.cartEntity.calculateTotalPrice() + 40).toString() ,
        ),
        SizedBox(height: 8.h,),
           ShippingSectionItem(
            onTap: () {
              
              setState(() {
                selectedShippinItem=1;
              });
               orderEntity.isPayWithCash=false;
            },
            
             isSelected: selectedShippinItem==1, title: S.current.checkout_buy_now_pay_later, subTitle: S.current.checkout_select_payment_method, price: orderEntity.cartEntity.calculateTotalPrice().toString() 
          
          
           ),
      ],
    );
  }
  
  @override
 
  bool get wantKeepAlive => true;
}