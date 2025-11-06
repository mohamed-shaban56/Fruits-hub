import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/presentation/widgets/custom_notification_icon.dart';

AppBar productAppBar(BuildContext context,{required String title}) {
 var isA=isArabic(context);
    return AppBar(
      centerTitle:true,
   
      title: Text(title,style: AppStyle.bold19(),),
     

       actions: [
        Padding(
          padding:  EdgeInsets.only(left: isA?10:0,right: isA?0:10),
          child: CustomNotificationIcon(),
        )
       ],
    );
  }