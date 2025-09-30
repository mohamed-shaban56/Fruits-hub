import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_style.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';

class CustomTextFild extends StatefulWidget {
  const CustomTextFild({super.key, required this.hintText, required this.icon, required this.textInputType,this.ispassword=false});
final String hintText;
final IconData icon;
final TextInputType textInputType;
final bool ispassword;
  @override
  State<CustomTextFild> createState() => _CustomTextFildState();
}
bool obSecretText=true;
class _CustomTextFildState extends State<CustomTextFild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType:  widget.textInputType ,
      obscureText:widget.ispassword?obSecretText: false,
      obscuringCharacter: '*',
      style: TextStyle(
        color:  Color(0xffC9CECF),
        fontSize: 20
      ),
      decoration: InputDecoration(
       filled: true,
       fillColor:  Color(0xffF9FAFA),
        border: buildOutLineInputBorder(),
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        contentPadding: EdgeInsets.only(top: 14,bottom: 17, right: isArabic(context) ?20:0,left: isArabic(context)?0:20),
        hintText: widget.hintText,
        hintStyle: AppStyle.bold13().copyWith(color: Color(0xff949D9E)),
        hintTextDirection: isArabic(context)?TextDirection.rtl:TextDirection.ltr,
        suffixIcon:widget.ispassword?IconButton(onPressed: (){
          setState(() {
            obSecretText=!obSecretText;
          });
        }, icon: Icon(obSecretText? Icons.visibility_off :Icons.visibility ,color: Color(0xff949D9E),)):Icon(widget.icon,color:Color(0xff949D9E) ,)
        
        
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
          borderSide: BorderSide(width: 1,color:  Color(0xffC9CECF)),
          borderRadius: BorderRadius.circular(4),
          
        );
  }
}