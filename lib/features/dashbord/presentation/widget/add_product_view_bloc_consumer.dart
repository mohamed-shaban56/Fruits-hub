
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/features/dashbord/presentation/manger/add_product/add_product_cubit.dart';
import 'package:fruitapp/features/dashbord/presentation/manger/add_product/add_product_state.dart';
import 'package:fruitapp/features/dashbord/presentation/widget/add_product_view_body.dart';


class AddProductViewBlocConsumer extends StatelessWidget {
  const AddProductViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
     if(state is AddProductFailure)
     {
      userMessege(context: context, errorMessege: 'faild to add product');
     }else if(state is AddProductSecces)
     {
           userMessege(context: context, errorMessege: 'success to add product');
     }
      },
      builder: (context, state) {
        return  AddProductViewBody();
      },
    );
  }
}
