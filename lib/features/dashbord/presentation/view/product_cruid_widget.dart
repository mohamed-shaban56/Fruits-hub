
import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_style.dart';

class ProductCrudWidget extends StatelessWidget {
  const ProductCrudWidget({
    super.key, required this.crudItem,this.onTap
  });
final String crudItem;
final Function()? onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(crudItem,style: AppStyle.semiBold16(),),
        ),
      ),
    );
  }
}