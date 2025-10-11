import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitapp/core/app_style.dart';
import 'package:fruitapp/core/function_hulper/is_arabic.dart';
import 'package:fruitapp/features/home/data/domain/button_navigation_bar_item.dart';

class ActiveNavigationBarItem extends StatefulWidget {
  const ActiveNavigationBarItem({super.key, required this.buttonNavigationBarItemEntity, required this.isActive, });
final ButtonNavigationBarItemEntity buttonNavigationBarItemEntity;
final bool isActive;

  @override
  State<ActiveNavigationBarItem> createState() => _ActiveNavigationBarItemState();
}

class _ActiveNavigationBarItemState extends State<ActiveNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    var isA=isArabic(context);
    return AnimatedContainer(
       
       height: 30.w,
        decoration: BoxDecoration(
          color:widget.isActive? Color(0xffEEEEEE):Colors.black,
          borderRadius: BorderRadius.circular(20)
        
        ),
       
        duration: Duration(seconds: 1),
        child: Directionality(
          textDirection: isA?TextDirection.rtl:TextDirection.ltr,
          child: Row(
            children: [
          
              SvgPicture.asset(widget.buttonNavigationBarItemEntity.activeIcon),
              Padding(
                padding:  EdgeInsets.all(7),
                child: Text(widget.buttonNavigationBarItemEntity.text,style: AppStyle.semiBold11().copyWith(color: Color(0xff1B5E37)),),
              ),
            ],
          ),
        ),
    
    
        );
  }
}


    //     Stack(
    //   clipBehavior: Clip.none,
    //   children: [
        

    //     Positioned(
    //       top: 0,
    //       bottom: 0,
        
    //       right: isA?-15:null,
    //       child: SvgPicture.asset(widget.buttonNavigationBarItemEntity.activeIcon),
    //     )
    //   ],
    // )  ;