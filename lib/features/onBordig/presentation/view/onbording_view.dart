import 'package:flutter/material.dart';
import 'package:fruitapp/features/onBordig/presentation/widgets/onBording_view_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});
static const routeName="onBordingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnbordingViewBody(),
    );
  }
}