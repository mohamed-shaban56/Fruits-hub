import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/presentation/widgets/review_section_body.dart';
import 'package:fruitapp/generated/l10n.dart';


class ReviewSection extends StatefulWidget {
  const ReviewSection({super.key});

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
@override
  void initState() {
   
    super.initState();
      WidgetsBinding.instance.addPostFrameCallback((_){

 context.read<OrderInputEntity>().updateAppBar( S.current.review);
    });
  }
  @override
  Widget build(BuildContext context) {
     
    return ReviewSectionBody();
  }
}