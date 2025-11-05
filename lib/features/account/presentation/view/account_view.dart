import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
import 'package:fruitapp/features/account/presentation/manager/user_sing_out/user_sing_out_cubit.dart';
import 'package:fruitapp/features/account/presentation/widgets/account_view_body.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
// import 'package:fruitapp/core/utliz/widgets/build_app_bar.dart';
// import 'package:fruitapp/features/account/presentation/widgets/account_view_body.dart';
import 'package:fruitapp/generated/l10n.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserSignOutCubit(authRepo: getIt<AuthRepo>()),
      child: Scaffold(
          appBar: buildAppBar(context,
              title: S.current.account,
              notifiactionEnabled: false,
              navigatorButtonEnabled: false),
          body: AccountViewBody()),
    );
  }
}
//
