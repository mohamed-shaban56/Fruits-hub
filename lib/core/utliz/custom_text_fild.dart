import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/generated/l10n.dart';

class CustomTextFild extends StatefulWidget {
  const CustomTextFild({super.key,this.maxLines, this.controller,this.onChanged,  required this.hintText,  this.icon, required this.textInputType,this.ispassword=false});
final String hintText;
final IconData? icon;
final TextInputType textInputType;
final bool ispassword;
final int? maxLines;
final TextEditingController? controller;
final Function(String)? onChanged;
  @override
  State<CustomTextFild> createState() => _CustomTextFildState();
}

class _CustomTextFildState extends State<CustomTextFild> {
bool obSecretText=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty )
        {
          return "${widget.hintText } ${S.current.required_filed}";
        }
        return null;
      },
      maxLines:widget. maxLines ,
      onChanged: widget.onChanged,
controller:widget.controller ,
      keyboardType:  widget.textInputType ,
      obscureText:widget.ispassword?obSecretText: false,
      obscuringCharacter: '*',
      style: TextStyle(
        color:  Color(0xffC9CECF),
        fontSize: 20
      ),
      decoration: InputDecoration(
       filled: true,
       fillColor:  AppColor.textFildBackgroundColor(context),
        border: buildOutLineInputBorder(),
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        contentPadding: EdgeInsets.only(top: 14,bottom: 17, right: isArabic(context) ?20:0,left: isArabic(context)?0:20),
        hintText: widget.hintText,
        hintStyle: AppStyle.bold13().copyWith(color: Color(0xff949D9E)),
        hintTextDirection: isArabic(context)?TextDirection.rtl:TextDirection.ltr,
        suffixIcon:widget.ispassword?
        IconButton(onPressed: (){
          setState(() {
            obSecretText=!obSecretText;
          });
        }, icon: Icon(obSecretText? Icons.visibility_off :Icons.visibility ,color:AppColor.textFilIconColor(context),))
        
        :Icon(widget.icon,color:AppColor.textFilIconColor(context) ,)
        
        
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
          borderSide: BorderSide(width: 1,color: AppColor.textFildBackgroundColor(context)),
          borderRadius: BorderRadius.circular(4),
          
        );
  }
}