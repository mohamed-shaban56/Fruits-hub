import 'package:flutter/material.dart';

class CustomReviewDivider extends StatelessWidget {
  const CustomReviewDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
        color: Colors.black,
        endIndent: 32,
        indent: 32,
        height: 25,
    );
  }
}