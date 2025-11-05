
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/features/auth/persetation/manger/signUpCubit/sing_up_cubit.dart';
import 'package:fruitapp/features/auth/persetation/widgets/sign_up_body.dart';



class SingUpBodyBlocConsumer extends StatelessWidget {
  const SingUpBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingUpCubit, SingUpState>(
      listener: (context, state) {
       if(state is SingUpFailure)
       {
        userMessege(context: context, errorMessege: state.error);
       }
       else if(state is SingUpSuccess)
       {
       
        Navigator.pop(context);
       }
      },
      builder: (context, state) {
        return  SignUpBody();
      },
    );
  }
}
