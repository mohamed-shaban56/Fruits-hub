
import 'package:flutter/material.dart';
import 'package:fruitapp/core/font_styls.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';
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
    Text(S.of(context).onBordigSubTitle,style:  FontStyls.cairo13(),),
    
      ],
    );
  }
  
  List<Widget> buildTitleWithDifferentLangeuage(context) {
    if(isArabic(context))
    {
 return[
Text(onbordingModel.title,style: FontStyls.cairo23(),),
SizedBox(width: 2,),
          Text('HUB',style: FontStyls.cairo23().copyWith(color: Colors.amber),),
          Text('Fruit',style: FontStyls.cairo23(),),
    ];
    }
   else{
      return [
Text(onbordingModel.title,style: FontStyls.cairo23(),),
SizedBox(width: 2,),
Text('Fruit',style: FontStyls.cairo23(),),
          Text('HUB',style: FontStyls.cairo23().copyWith(color: Colors.amber),),
          
          
      ];
    }
   
  }
}