
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

class AccountViewUserInfo extends StatefulWidget {
  const AccountViewUserInfo({
    super.key,
  });

  @override
  State<AccountViewUserInfo> createState() => _AccountViewUserInfoState();
}

class _AccountViewUserInfoState extends State<AccountViewUserInfo> {
  late UserEntity user;
  @override
  void initState() {
 
    super.initState();
    user=SharedPrefrenceSinglton.getUserData();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          
        Text(user.name,style: AppStyle.bold13(),),
        SizedBox(height: 2.h,),
       Text(user.email,style: AppStyle.regular13().copyWith(color: Color(0xff888FA0)),),
    
        ],);
  }
}