

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/auth/persetation/view/sign_in_view.dart';
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
  late PageController pageController;
  int currentPage = 0;

  late OnbordingModel onbordingModel1;
  late OnbordingModel onbordingModel2;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    onbordingModel1 = OnbordingModel(
      image: Assets.assetsImagesFruitBasket,
      title: S.current.onBordig1Title,
      backgroundImage: Assets.assetsImagesVector,
      subTitle: S.current.onBordig1SubTitle,
    );

    onbordingModel2 = OnbordingModel(
      image: Assets.assetsImagesPineappleCuate,
      title: S.current.onBordig2Title,
      backgroundImage: Assets.assetsImagesVector,
      subTitle: S.current.onBordig2SubTitle,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              PageViewItem(onbordingModel: onbordingModel1, pageCount: currentPage,),
              PageViewItem(onbordingModel: onbordingModel2, pageCount: currentPage,),
            ],
          ),
        ),

        BuildSmoothIndicator(
          pageController: pageController,
          currentPage: currentPage,
        ),

        const SizedBox(height: 29),

        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.khorzintalPaddig),
          child: Visibility(
            visible: currentPage != 0,
            child: CustomButton(
              onPressed: () {
              
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const SingInView()));
              },
              text: S.of(context).startNowKeyword,
            ),
          ),
        ),

        const SizedBox(height: 43),
      ],
    );
  }
}
