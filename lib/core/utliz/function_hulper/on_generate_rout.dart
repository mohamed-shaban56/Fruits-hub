import 'package:flutter/material.dart';
import 'package:fruitapp/features/Checkout/presentation/view/success_payment_view.dart';
import 'package:fruitapp/features/account/presentation/view/abut_us_view.dart';
import 'package:fruitapp/features/dashbord/presentation/view/add_product_view.dart';
import 'package:fruitapp/features/best_selling_fruits/presentation/view/fruit_view.dart';
import 'package:fruitapp/features/home/presentation/views/main_view.dart';
import 'package:fruitapp/features/onBordig/presentation/view/onbording_view.dart';
import 'package:fruitapp/features/splash_view/presentation/views/splash_view.dart';


Route<dynamic> onGenerateRout(RouteSettings setting)
{
  switch(setting.name)
  {
    case SplashView.routeName:
     return MaterialPageRoute(builder: (context)=>SplashView());
    case OnbordingView.routeName:
     return MaterialPageRoute(builder: (context)=>OnbordingView());
        case FruitView.routeName:
     return MaterialPageRoute(builder: (context)=>FruitView());
       case AddProductView.routeName:
      return MaterialPageRoute(builder: (context)=>AddProductView());
       case AbutUsView.routeName:
      return MaterialPageRoute(builder: (context)=>AbutUsView());
     
     case SuccessPaymentView.routeName:
     return MaterialPageRoute(builder: (context)=>SuccessPaymentView());
     case MainView.routName:
     return MaterialPageRoute(builder: (context)=>MainView());
   default:
    return MaterialPageRoute(builder: (context)=>Scaffold(
      body: Center(child: Text('page not found')),
    ));

  }

}