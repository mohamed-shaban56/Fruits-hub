import 'package:flutter/material.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    super.key, required this.radius,this.onTap, required this.backGroundcolor, required this.icon, required this.iconColor,
  });
final double radius;
final Color backGroundcolor;
final Color iconColor;
final IconData icon;
final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backGroundcolor,
        child: Center(child: FittedBox(child: Icon(icon,color: iconColor,))),
      ),
    );
  }
}