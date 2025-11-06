
import 'package:flutter/material.dart';

import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({
    super.key,
  });

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
late  UserEntity user;
  @override
  void initState() {
    
    super.initState();
       user=  SharedPrefrenceSinglton.getUserData();
  }
  @override
  Widget build(BuildContext context) {
        bool isA=isArabic(context);
    return  Directionality(
      textDirection:isA?TextDirection.rtl:TextDirection.ltr ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Image.asset(Assets.assetsImagesUserImage),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.current.good_morning,style: AppStyle.regular16(),),
              Text(user.name,style: AppStyle.regular16(),),
            ],
          )
        ],
      ),
    );
  }
}