

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/widgets/button_navigation_bar_item.dart';
import 'package:fruitapp/features/home/data/domain/button_navigation_bar_item.dart';




class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedItem=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30) ),
        boxShadow:[
           BoxShadow(
          color: Color(0x19000000),
          blurRadius: 2,
          offset: Offset(0, -2)
        )
        ],

      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: getButtonnavigationBarItem.asMap().entries.map((e){
      int index=e.key;


      return GestureDetector(
        onTap: (){
          
          setState(() {
            selectedItem= index;
          });
        },
        child: NavigationBarItem(isSelected: selectedItem == index, buttonNavigationBarItemEntity: e.value));
      }) .toList(),
      )
    );
  }
}

