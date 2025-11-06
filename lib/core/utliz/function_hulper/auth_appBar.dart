import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';


AppBar authAppBar(BuildContext context,{required String title}) {
    return AppBar(
      centerTitle:true,
   
      title: Text(title,style: AppStyle.bold19(),),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);},
       icon: Icon(Icons.arrow_back_ios,size: 22,)),
    );
  }