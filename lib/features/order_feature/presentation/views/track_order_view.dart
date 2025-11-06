import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/order_feature/presentation/widgets/track_order_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.current.track_order,notifiactionEnabled: false),
      body: OrderTrackingPage(),
    );
  }
}