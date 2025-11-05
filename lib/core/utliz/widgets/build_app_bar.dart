import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/presentation/widgets/custom_notification_icon.dart';


AppBar buildAppBar(BuildContext context,{required String title,bool navigatorButtonEnabled=true,bool notifiactionEnabled=true}) {
 var isA=isArabic(context);


    return AppBar(
      centerTitle:true,
   
      title: Text(title,style: AppStyle.bold19(),),

      leading: Visibility(
        visible: navigatorButtonEnabled,
        child: IconButton(onPressed: (){
          Navigator.pop(context);},
         icon: Icon(Icons.arrow_back_ios,size: 22,)),
      ),

       actions: [
        Visibility(
          visible:notifiactionEnabled ,
          child: Padding(
            padding:  EdgeInsets.only(left: isA?10:0,right: isA?0:10),
            child: CustomNotificationIcon(),
          ),
        )
       ],
    );
  }