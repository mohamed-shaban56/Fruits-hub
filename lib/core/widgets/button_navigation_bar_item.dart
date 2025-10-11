import 'package:flutter/material.dart';
import 'package:fruitapp/core/widgets/active_button_bar_item.dart';
import 'package:fruitapp/core/widgets/in_active_buttn_bar_item.dart';
import 'package:fruitapp/features/home/data/domain/button_navigation_bar_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected, required this.buttonNavigationBarItemEntity});
final bool isSelected;
final ButtonNavigationBarItemEntity buttonNavigationBarItemEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveNavigationBarItem(buttonNavigationBarItemEntity: buttonNavigationBarItemEntity, isActive: isSelected,) :InActiveNavigationBarItem(image: buttonNavigationBarItemEntity.inActiveIcon,);
  }
}