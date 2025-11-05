

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';

import 'package:fruitapp/generated/l10n.dart';

Future<dynamic> buildShowModelButtomSheet(BuildContext context,AddressEntity addressEntity) {

    return showModalBottomSheet(
   isScrollControlled: true,

context: context,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
),
 builder: (context)=>

 Padding(
   padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, ),
   child:Container(
  
   height: 290.h,
   decoration: BoxDecoration(
   
   borderRadius: BorderRadius.circular(20)
   ),
   child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         CustomTextFild(
          icon:Icons.nature,
          onChanged:(value){
     
             addressEntity.updateAddress(value);
          } ,
          hintText: S.current.add_new_address, textInputType: TextInputType.text),
     
   SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              onPressed: (){
 
  
   
                Navigator.pop(context);
             
            }, text: S.current.address_update,
                  ),
          ),
        
       ],
       
     ),
   ),
   
   
   )));

 
 
}