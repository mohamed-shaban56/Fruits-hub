import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/core/utliz/function_hulper/auth_appBar.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:fruitapp/features/auth/persetation/manger/signUpCubit/sing_up_cubit.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sign_up_body_bloc_consumer.dart';
import 'package:fruitapp/generated/l10n.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: authAppBar(context, title: S.of(context).SingUpTitle),
        body: SingUpBodyBlocConsumer(),
      ),
    );
  }
}
