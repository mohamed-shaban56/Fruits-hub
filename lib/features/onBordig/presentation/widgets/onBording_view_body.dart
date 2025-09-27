import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/core/constant.dart';
import 'package:fruitapp/core/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/core/widgets/custom_button.dart';
import 'package:fruitapp/features/auth/persetation/login_view.dart';
import 'package:fruitapp/features/onBordig/data/onBording_model.dart';
import 'package:fruitapp/features/onBordig/presentation/widgets/buid_smooth_page_indicator.dart';
import 'package:fruitapp/features/onBordig/presentation/widgets/page_view_item.dart';
import 'package:fruitapp/generated/l10n.dart';


class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
 late OnbordingModel onbordingModel1;
  late OnbordingModel onbordingModel2;
  late PageController pageController;
   int  currentPage=0;
  @override
  void initState() {
    super.initState();
    pageController=PageController();
    pageController.addListener((){
      setState(() {
        currentPage=pageController.page!.round();
      });

    });
  }
@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    intializeModel();
    
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
             PageViewItem(onbordingModel: onbordingModel1, currentPage:currentPage, isVisiable: true ,),
            PageViewItem(onbordingModel: onbordingModel2, currentPage: currentPage,isVisiable:  false,),
            
          
            ],
          ),
        ),
       
   BuildSmoothIndicator(pageController: pageController, currentPage: currentPage,)      ,
  SizedBox(height: 29,),
   Padding(

     padding: const EdgeInsets.symmetric(horizontal: Constant.khorzintalPaddig),
     child: Visibility(
      visible: currentPage!=0,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: CustomButton( onPressed: () {

        SharedPrefrenceSinglton.setBool(Constant.kisOnBordingViewSeen, true);
        Navigator.pushReplacementNamed(context, LoginView.routName);}
        ,text:S.of(context).startNowKeyword ),),
   ),
   SizedBox(height: 43,)

      ],
    );
    
  }
  
  void intializeModel() {
    onbordingModel1=OnbordingModel(image: Assets.assetsImagesFruitBasket, title: S.of(context).onBordig1Title , backgroundImage: Assets.assetsImagesVector, subTitle:  S.of(context).onBordig1SubTitle);
     onbordingModel2=OnbordingModel(image: Assets.assetsImagesPineappleCuate, title: S.of(context).onBordig2Title , backgroundImage: Assets.assetsImagesVector, subTitle:  S.of(context).onBordig2SubTitle);
  }
  
}
