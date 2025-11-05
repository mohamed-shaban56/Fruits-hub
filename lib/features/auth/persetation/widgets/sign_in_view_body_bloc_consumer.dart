

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/features/auth/persetation/manger/signInCubit/sign_in_cubit.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sing_in_view_body.dart';
import 'package:fruitapp/features/home/presentation/views/main_view.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
      if(state is SignInFaulure)
      {
        userMessege(context: context,errorMessege: state.error);
      }else if(state is SignInSuccess)
      {
        SharedPrefrenceSinglton.seLoggedIn(true);
         Navigator.push(context, MaterialPageRoute(builder: (context)=>MainView()));
      }
      },
      builder: (context, state) {
        return  SingInViewBody();
      },
    );
  }
}
