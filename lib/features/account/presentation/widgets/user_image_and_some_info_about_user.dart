
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/account/presentation/widgets/account_view_user_info..dart';
import 'package:fruitapp/features/account/presentation/widgets/user_image.dart';

class UserImageAndSomeInfoAboutUser extends StatelessWidget {
  const UserImageAndSomeInfoAboutUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserImage(),
        SizedBox(width: 24.w),
        AccountViewUserInfo(),
      ],
    );
  }
}