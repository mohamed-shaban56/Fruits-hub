import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/account/presentation/widgets/about_us_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';


class AbutUsView extends StatelessWidget {
  const AbutUsView({super.key});
    static const routeName="about us";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(context, title: S.current.about_us,notifiactionEnabled: false),
      body: AboutUsViewBody(),
    );
  }
}
