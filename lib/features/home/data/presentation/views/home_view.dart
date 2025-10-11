
import 'package:flutter/material.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/widgets/custom_navigation_bar.dart';
import 'package:fruitapp/features/home/data/presentation/widgets/home_view_app_bar.dart';
import 'package:fruitapp/features/home/data/presentation/widgets/home_view_body.dart';




class HomeView extends StatefulWidget {
  const HomeView({super.key});
static const routName="HomeView"; 

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
     bool isA=isArabic(context);
    return Scaffold(
      bottomNavigationBar:CustomNavigationBar() ,
      appBar: homeViewAppBar(isA),
      body: HomeViewBody()
      
    );
  }

 
  
}
