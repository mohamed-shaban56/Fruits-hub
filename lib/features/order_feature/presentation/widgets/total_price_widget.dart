
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/generated/l10n.dart';


class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key, required this.totalPrice,
  });
final double totalPrice;
  @override
  Widget build(BuildContext context) {
var isA=isArabic(context);
    return
    Directionality(
      textDirection: isA?TextDirection.rtl:TextDirection.ltr,
      child: Row(

                        children: [
                          Text("${S.current.totalPrice} :",style: AppStyle.bold16(),),
                          Text(totalPrice.toString(),style: AppStyle.bold16(),),
                      
                        ],
                      ),
    );
    
    
    
    
    
    
    
  
  }
}