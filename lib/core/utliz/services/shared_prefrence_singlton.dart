import 'dart:convert';
import 'dart:io';

import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceSinglton {
  static late SharedPreferences instance;

  static Future<void> intial() async {
    instance = await SharedPreferences.getInstance();
  }

  static Future<void> seLoggedIn(bool value) async {
    await instance.setBool(Constant.klongInKey, value);
  }
   static Future<void> setImage(String image) async {
    await instance.setString(Constant.kprofileImage, image);
  }
 static File? getImage()  {
  String? path=   instance.getString(Constant.kprofileImage);
  if(path !=null)
  {
    return File(path);
  }
  return null;

  }


  static bool isLoggedIn() {
    return instance.getBool(Constant.klongInKey) ?? false;
  }

  static Future<void> setOnBordingSeen(bool value) async {
    await instance.setBool(Constant.konBordingKey, value);
  }

  static bool getOnBordingSeen() {
    return instance.getBool(Constant.konBordingKey) ?? false;
  }

  static Future<void> setUserData(String value) async {
    await instance.setString(Constant.ksaveUserData, value);
  }

  static UserEntity getUserData() {
    UserEntity userEntity;
    var json = instance.getString(Constant.ksaveUserData);
    if (json != null) {
      userEntity = UserEntity.fromjson(jsonDecode(json));
      return userEntity;
    }
    return UserEntity(email: 'email', name: "user",uid: "uid");
  }
}
