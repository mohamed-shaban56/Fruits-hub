
import 'package:flutter/material.dart';
// import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
import 'package:fruitapp/features/home/presentation/views/main_view.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
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
  WidgetsBinding.instance.addPostFrameCallback((_){
     excuteNavigation();
  });

  
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SplashViewBody() ,
    );
  }
  
  void excuteNavigation() {

 var isOnBordingViewSeen=SharedPrefrenceSinglton.getOnBordingSeen();
    var isUserLoggedIn=SharedPrefrenceSinglton.isLoggedIn();

    if(!mounted)
    {
    return;
    }
    else{

  Future.delayed(Duration(seconds: 2),(){
      if(isUserLoggedIn==true)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MainView() ));
        return;
      }
    else  if(isOnBordingViewSeen==true)
      {
         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SingInView() ));
       return;
      }else{

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnbordingView()));
      
      return;
      }
      
      
     } );
    }
   
   
  
     
    
  }
}
