import 'package:flutter/material.dart';
import 'package:fruitapp/core/function_hulper/on_generate_rout.dart';
import 'package:fruitapp/features/splash_view/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRout,
      initialRoute: SplashView.routeName,
    );
    }}