import 'package:flutter/material.dart';
import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/features/onBordig/data/onBording_model.dart';
import 'package:fruitapp/features/onBordig/presentation/widgets/page_view_item.dart';
import 'package:fruitapp/generated/l10n.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
 late OnbordingModel onbordingModel;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
      intializModel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
       PageViewItem(onbordingModel: onbordingModel)
      ],
    );
  }
  
  void intializModel() {
    onbordingModel=OnbordingModel(image: Assets.fruitBasketImage,
     title: S.of(context).onBordigViewTitle
     , backgroundImage: Assets.vectorImage);
  }
}