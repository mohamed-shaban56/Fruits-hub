import 'package:flutter/material.dart';
import 'package:fruitapp/features/home/data/presentation/widgets/custom_notification_icon.dart';
import 'package:fruitapp/features/home/data/presentation/widgets/user_info.dart';

AppBar homeViewAppBar(bool isA) {
    return AppBar(
      title:UserInfo(),
      actions: [
        Padding(
          padding: EdgeInsets.only(left: isA?16:0,right: isA?0:16),
          child: CustomNotificationIcon(),
        ),
      ],
    );
  }
