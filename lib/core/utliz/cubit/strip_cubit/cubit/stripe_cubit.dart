

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/core/utliz/repo/stripe_repo/stripe_repo.dart';

part 'stripe_state.dart';

class StripeCubit extends Cubit<StripeState> {
  
  StripeCubit({required this.stripeRepo}) : super(StripeInitial());
 final StripeRepo stripeRepo;
 void createPayment(StripePaymentModel stripePaymentModel)async{
  emit(StripeLoading());

    var result=await     stripeRepo.createPayment(stripePaymentModel: stripePaymentModel);
    result.fold((failre){
      log('error in stripe cubit ${failre.error}');
      emit(StripeFailure(failre.error));
      }
    
    , (success){
      log('payment done ');
      emit(StripeSuccess());
    }
      );
  }
}
