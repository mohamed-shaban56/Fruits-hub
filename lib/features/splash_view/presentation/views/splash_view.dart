
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruitapp/core/constant.dart';
import 'package:fruitapp/core/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/persetation/login_view.dart';
import 'package:fruitapp/features/onBordig/presentation/view/onbording_view.dart';
import 'package:fruitapp/features/splash_view/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
static const routeName="splashView";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
  
    super.initState();
     excuteNavigation();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SplashViewBody() ,
    );
  }
  
  void excuteNavigation() {
    if(!mounted)return;
    var isOnBordingViewSeen=SharedPrefrenceSinglton.getBool(Constant.kisOnBordingViewSeen);
    log(isOnBordingViewSeen.toString());
    Future.delayed(Duration(seconds: 3),(){
      if(isOnBordingViewSeen==true)
      {
       Navigator.pushReplacementNamed(context, LoginView.routName);
      }else{
 Navigator.pushReplacementNamed(context, OnbordingView.routeName);
      }
     
    });
  }
}