 import 'package:flutter/material.dart';
import 'package:fruitapp/features/account/presentation/view/account_view.dart';
import 'package:fruitapp/features/dashbord/presentation/view/dash_board_view.dart';
import 'package:fruitapp/features/home/presentation/widgets/home_view.dart';

import 'package:fruitapp/features/cart/presentation/view/cart_view.dart';
import 'package:fruitapp/features/products/presentation/view/product_view.dart';

List<Widget> buildScrean() =>[
HomeView(),
ProductView(),
CartView(),
DashBoardView(),
AccountView()
  ];