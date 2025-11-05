import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,this.onPressed, this.isLoading=false});
final String text;
final bool isLoading;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 54,
      width: double.infinity,
     child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
      onPressed: onPressed, child:isLoading? Center(child: CircularProgressIndicator(color: Colors.white,)):Text(text,style: AppStyle.bold16().copyWith(color: Colors.white),))
     
     );
  }
}