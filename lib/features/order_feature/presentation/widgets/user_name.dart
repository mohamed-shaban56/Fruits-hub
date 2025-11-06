
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/generated/l10n.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.isA, required this.userName,
  });

  final bool isA;
final String userName;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:isA?TextDirection.rtl:TextDirection.ltr ,
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.start,
        children: [
          Text("${S.current.userName} :",style: AppStyle.bold13().copyWith(color: Colors.grey),),
          Text(userName,style: AppStyle.bold13().copyWith(color: Colors.grey)),
      
        ],
      ),
    );
  }
}