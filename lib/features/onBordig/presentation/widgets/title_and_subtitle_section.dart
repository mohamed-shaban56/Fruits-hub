
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/onBordig/data/onBording_model.dart';
import 'package:fruitapp/generated/l10n.dart';

class TitleAndSubtitleSection extends StatelessWidget {
  const TitleAndSubtitleSection({
    super.key,
    required this.onbordingModel,
  });

  final OnbordingModel onbordingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
       Row(

        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          ...buildTitleWithDifferentLangeuage(context)
          
          
           
         ],
       ),
        SizedBox(height: 25,),
    Text(S.of(context).onBordig1SubTitle,style:  AppStyle.bold13(),),
    
      ],
    );
  }


  
  List<Widget> buildTitleWithDifferentLangeuage(context) {
    if(isArabic(context))
    {
 return[
Text(onbordingModel.title,style: AppStyle.bold23(),),
SizedBox(width: 2,),
          Text('HUB',style: AppStyle.bold23().copyWith(color: Colors.amber),),
          Text('Fruit',style: AppStyle.bold23(),),
    ];
    }
   else{
      return [
Text(onbordingModel.title,style: AppStyle.bold23(),),
SizedBox(width: 2,),
Text('Fruit',style: AppStyle.bold23(),),
          Text('HUB',style: AppStyle.bold23().copyWith(color: Colors.amber),),
          
          
      ];
    }
   
  }
}