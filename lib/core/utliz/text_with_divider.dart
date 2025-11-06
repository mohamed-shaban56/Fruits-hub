
import 'package:flutter/material.dart';
import 'package:fruitapp/generated/l10n.dart';

class ORDivider extends StatelessWidget {
  const ORDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(S.of(context).or),
        ),
        Expanded(child: Divider())
      ],
    );
  }
}

