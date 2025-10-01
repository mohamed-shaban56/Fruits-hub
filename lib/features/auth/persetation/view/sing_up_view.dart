import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/function_hulper/service_locator.dart';
import 'package:fruitapp/core/widgets/build_appBar.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:fruitapp/features/auth/persetation/manger/auth_bloc.dart'
    show AuthBloc;
import 'package:fruitapp/features/auth/persetation/widgets/sign_up_body_bloc_consumer.dart';
import 'package:fruitapp/generated/l10n.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});
  static const routName = "sign up view";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).SingUpTitle),
        body: SingUpBodyBlocConsumer(),
      ),
    );
  }
}
