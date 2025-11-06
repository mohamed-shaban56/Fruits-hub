import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_input_entity.dart';
import 'package:fruitapp/features/dashbord/presentation/manger/add_product/add_product_cubit.dart';
import 'package:fruitapp/features/dashbord/presentation/widget/add_broduct_checkBox.dart';
import 'package:fruitapp/features/dashbord/presentation/widget/add_image_fild.dart';



class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
late TextEditingController productNameController;
late TextEditingController productPriceController;
late TextEditingController productCodeController;
late TextEditingController productDescController;
late TextEditingController numberOfColoriesController;
late TextEditingController unitamountController;
late TextEditingController experationManthsController;
GlobalKey<FormState> formKey=GlobalKey<FormState>();
File ? fileImage;
   bool isChecked=false;
   bool isOrganic=false;
   @override
  void initState() {
    
    super.initState();
    productNameController=TextEditingController();
    productCodeController=TextEditingController();
    productDescController=TextEditingController();
    productPriceController=TextEditingController();
    numberOfColoriesController=TextEditingController();
    unitamountController=TextEditingController();
    experationManthsController=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                    SizedBox(height: 20,),
                CustomTextFild(
                  controller:productNameController ,
                  
                  hintText: 'product Name', textInputType: TextInputType.text),
                SizedBox(height: 12.h,),
                Row(
                  children: [
                      Expanded(
                        child: CustomTextFild(
                                          controller:productPriceController ,
                                          hintText: 'product Price', textInputType: TextInputType.number),
                      ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: CustomTextFild(
                    controller: productCodeController,
                    hintText: 'product Code', textInputType: TextInputType.text),
                  ),

                  ],
                ),
                SizedBox(height: 12.h,),
                  CustomTextFild(
                  controller:numberOfColoriesController ,
                  hintText: 'Number of Colories', textInputType: TextInputType.number),
                   SizedBox(height: 12.h,),
                  CustomTextFild(
                  controller:unitamountController ,
                  hintText: 'Unit Amount', textInputType: TextInputType.number),
                   SizedBox(height: 12.h,),
                   CustomTextFild(
                  controller:experationManthsController ,
                  hintText: 'Expiration Manths', textInputType: TextInputType.number),
                SizedBox(height: 12.h,),
                 
                SizedBox(height: 12.h,),
                 CustomTextFild(
                  controller: productDescController,
                  hintText: 'product descreption', textInputType: TextInputType.text, icon: null,maxLines: 5,),
                SizedBox(height: 12.h,),
               
                AddBroductCheckbox(isChecked: isChecked, onchange: (bool value) { 
                  setState(() {
                    isChecked=value;
                  });
                 }, title: 'isFeatured',),
                    SizedBox(height: 12.h,),

                     AddBroductCheckbox(isChecked: isOrganic, onchange: (bool value) { 
                  setState(() {
                    isOrganic=value;
                  });
                 }, title: 'isOrganic',),


                  SizedBox(height: 12.h,),
                AddImageFild(onchange: (File image) { 
                  setState(() {
                    fileImage=image;
                });
            
            
                 },),
               SizedBox(height: 12.h,),  
            CustomButton(onPressed: () {
              if(fileImage ==null)
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('you cant sent data to the data base without image')));
              }else {
                if(formKey.currentState!.validate())
                {
                  ProductInputEntity input=
                  ProductInputEntity(productPrice: double.parse(productPriceController.text), 
                  productName: productNameController.text, 
                  productCode: productCodeController.text,
                   productDesc: productDescController.text,
                   fileImage: fileImage!,
                    experationMonths:int.parse(experationManthsController.text,) ,
                     numOfcolories:int.parse(numberOfColoriesController.text) ,
                      isOrganic: isOrganic,
                     averageRating: 4,
                      averageCount: 3, 
                     unit: int.parse(unitamountController.text) 
                     
                      );
                  context.read<AddProductCubit>().addProduct(input);
                }
              }
            }, text: 'add product',)
            
            
                
              ],
            ),
          ),
        ),
      );
  }
}