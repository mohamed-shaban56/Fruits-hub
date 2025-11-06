import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit_total_price/cart_cubit_total_price.dart';
import 'package:fruitapp/features/home/presentation/widgets/presestant_nav_bar_items.dart';
import 'package:fruitapp/features/home/presentation/widgets/presestant_screan.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routName = "HomeView";

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
      create: (context) => CartCubit(),),
       BlocProvider(
      create: (context) => CartCubitTotalPrice(),),
    
    ],
      child: PersistentTabView(
        
        context,
        controller: _controller,
        screens: buildScrean(),
        items: navBarsItems(),
        backgroundColor: Theme.of(context).brightness==Brightness.light?Colors.white:Colors.black,
        navBarStyle: NavBarStyle.style4,
      ),
    );
  }
}
