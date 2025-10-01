
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/function_hulper/build_error_bar.dart';
import 'package:fruitapp/features/auth/persetation/manger/auth_bloc.dart';
import 'package:fruitapp/features/auth/persetation/manger/auth_state.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sign_up_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SingUpBodyBlocConsumer extends StatelessWidget {
  const SingUpBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
       if(state is AuthStateFailuer)
       {
buidErrorBar(context: context, errorMessege: state.error);
       }
       else if(state is AuthStateSuccess)
       {
        buidErrorBar(context: context, errorMessege: 'success');
       }
      },
      builder: (context, state) {
        return ModalProgressHUD(inAsyncCall: state is AuthStateLoadig?true:false,
        child: SignUpBody());
      },
    );
  }
}
