import 'package:flutter/material.dart';

void animateToStep(PageController controller,int index)
{
  controller.animateToPage(index, duration: Duration(milliseconds: 250), curve: Curves.bounceIn);
}