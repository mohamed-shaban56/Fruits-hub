import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitapp/core/font_styls.dart';
import 'package:fruitapp/features/onBordig/data/onBording_model.dart';
import 'package:fruitapp/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key,required this.onbordingModel});
final OnbordingModel onbordingModel;

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.sizeOf(context).height;
final double width=MediaQuery.sizeOf(context).width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
        SvgPicture.asset(onbordingModel.backgroundImage),
        Positioned(
          top: height/6,
          left: width/5,
          child: SvgPicture.asset(onbordingModel.image)),


Positioned(
  top: height/1.7,
  left: 20,
  right: 20,
  child: Column(
  
    children: [
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Text(onbordingModel.title,style: FontStyls.cairo23(),),
        Text('HUB',style: FontStyls.cairo23().copyWith(color: Colors.amber),),
        Text('Fruit',style: FontStyls.cairo23(),),
        
         
       ],
     ),
      SizedBox(height: 25,),
  Text(S.of(context).onBordigSubTitle,style:  FontStyls.cairo13(),),
  
    ],
  ),
)

      ],
    );
  }
}