import 'package:flutter/material.dart';
import 'package:fruitapp/features/splash_view/presentation/views/splash_view.dart';


Route<dynamic> onGenerateRout(RouteSettings setting)
{
  switch(setting.name)
  {
    case SplashView.routeName:
     return MaterialPageRoute(builder: (context)=>SplashView());

   default:
    return MaterialPageRoute(builder: (context)=>Scaffold(
      body: Center(child: Text('page not found')),
    ));

  }

}