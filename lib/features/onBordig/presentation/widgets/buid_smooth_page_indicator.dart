
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildSmoothIndicator extends StatelessWidget {
  const BuildSmoothIndicator({
    super.key,
    required this.pageController, required this.currentPage,
  });

  final PageController pageController;
final int currentPage;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(    
       controller: pageController,  // PageController    
       count:  2,    
       effect:  WormEffect(
        dotWidth: 9,
        dotHeight: 9,
        activeDotColor: AppColor.primaryColor,
        dotColor:currentPage==0? AppColor.primaryColor.withOpacity(.5):AppColor.primaryColor
       ),   
       onDotClicked: (index){    
      }
    );
  }
}