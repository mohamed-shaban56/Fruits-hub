  import 'package:flutter/material.dart';
import 'package:fruitapp/core/font_styls.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';

List<Widget> buildTitleWithDifferentLangeuage( {required context,required String title,required int currentPage}) {
  if(currentPage==0)
  {
 if(isArabic(context))
    {
 return[
Text(title,style: AppStyle.cairo23(),),
SizedBox(width: 2,),
          Text('HUB',style: AppStyle.cairo23().copyWith(color: Colors.amber),),
          Text('Fruit',style: AppStyle.cairo23(),),
    ];
    }
   else{
      return [
Text(title,style: AppStyle.cairo23(),),
SizedBox(width: 2,),
Text('Fruit',style: AppStyle.cairo23(),),
          Text('HUB',style: AppStyle.cairo23().copyWith(color: Colors.amber),),
          
          
      ];
    }
  }
  else{
    return [Text(title,style: AppStyle.cairo23(),)];
  }
   
   
  }