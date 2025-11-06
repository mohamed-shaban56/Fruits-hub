  import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';

List<Widget> buildTitleWithDifferentLangeuage( {required context,required String title,required int currentPage}) {
  if(currentPage==0)
  {
 if(isArabic(context))
    {
 return[
Text(title,style: AppStyle.bold23(),),
SizedBox(width: 2,),
          Text('HUB',style: AppStyle.bold23().copyWith(color: Colors.amber),),
          Text('Fruit',style: AppStyle.bold23(),),
    ];
    }
   else{
      return [
Text(title,style: AppStyle.bold23(),),
SizedBox(width: 2,),
Text('Fruit',style: AppStyle.bold23(),),
          Text('HUB',style: AppStyle.bold23().copyWith(color: Colors.amber),),
          
          
      ];
    }
  }
  else{
    return [Text(title,style: AppStyle.bold13(),)];
  }
   
   
  }