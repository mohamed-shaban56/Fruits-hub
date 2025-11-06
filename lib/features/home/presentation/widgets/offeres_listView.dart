import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/features/home/presentation/widgets/offer_item.dart';


class OfferesListview extends StatelessWidget {
  const OfferesListview({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 158.h,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        
        itemCount: 5,
        itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: OfferItem(),
        )),
    );
   
  }
}