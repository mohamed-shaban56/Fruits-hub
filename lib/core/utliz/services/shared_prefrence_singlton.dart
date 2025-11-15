import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/features/auth/domain/entity/user_entity.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceSinglton {
  static late SharedPreferences instance;
static ValueNotifier<File?>valueNotifierImage=ValueNotifier(null);
  static Future<void> intial() async {
    instance = await SharedPreferences.getInstance();
  }

  static Future<void> seLoggedIn(bool value) async {
    await instance.setBool(Constant.klongInKey, value);
  }



   static Future<void> setImage(String image) async {
   final imageFile=File(image);
    await instance.setString(Constant.kprofileImage, image);
    valueNotifierImage.value=imageFile;
  }

 static void getImage()  {
  String? path=   instance.getString(Constant.kprofileImage);
  if(path !=null)
  {
   valueNotifierImage.value=File(path);
  }else
  {
  valueNotifierImage.value=null;
  }


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
