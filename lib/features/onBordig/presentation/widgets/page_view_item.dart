import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
import 'package:fruitapp/features/onBordig/data/onBording_model.dart';
import 'package:fruitapp/generated/l10n.dart';



class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key,required this.onbordingModel, required this.pageCount});
final OnbordingModel onbordingModel;
final int pageCount;
  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    final double height=MediaQuery.sizeOf(context).height;
final double width=MediaQuery.sizeOf(context).width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            fit: BoxFit.cover,
            onbordingModel.backgroundImage),
        ),
        
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
        Text(onbordingModel.title,style: AppStyle.bold23(),),
        Text('HUB',style:  AppStyle.bold23().copyWith(color: Colors.amber),),
        Text('Fruit',style:  AppStyle.bold23(),),
        
         
       ],
     ),
      SizedBox(height: 25,),
  Text(onbordingModel.subTitle,style:   AppStyle.bold13(),),
  
    ],
  ),
),


Positioned(
  top: 40,
right: isA?20:null,
left: isA?null:20,
  child: Visibility(
    visible: pageCount!=0,
    child: TextButton( 
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap
      ),
      onPressed: () { 
    SharedPrefrenceSinglton.setOnBordingSeen(true);

    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SingInView() ));

     }, child: Text(S.current.skipKeyword,style: AppStyle.regular13().copyWith(color: Color(0xff949D9E))),),
  ))
      ],
    );
  }
}