import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/account/presentation/widgets/favorite_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class FavoritView extends StatelessWidget {
  const FavoritView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: S.current.favorites,
          notifiactionEnabled: false,
        ),
        body: FavoriteViewBody(),
      ),
    );
  }
}
