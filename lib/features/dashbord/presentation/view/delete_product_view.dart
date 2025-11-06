import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/core/utliz/function_hulper/dashbord_appBar.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/generated/l10n.dart';

class DeleteProductView extends StatelessWidget {
  const DeleteProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashBordAppBar(context, title: 'Delete Product'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          
          children: [
             
            CustomTextFild(hintText: S.current.product_name, textInputType: TextInputType.text),
            SizedBox(height: 12.h,),
            CustomTextFild(hintText: S.current.product_category, textInputType: TextInputType.text),
            Spacer(),
            CustomButton(text: 'delete')
          ],
        ),
      ),
    );
  }
}