import 'package:fruitapp/core/utliz/function_hulper/api_keys.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/core/utliz/services/api_service.dart';

class StripeRemoteDataSource {

  ApiService apiService;
  StripeRemoteDataSource({required this.apiService});

   Future<String> getUserSecretKey(StripePaymentModel stripePaymentModel)
  async{
    Map<String,dynamic>header={
      'Authorization':'Bearer ${ApiKeys.stripeSectretKey}',
      'Content-Type':'application/x-www-form-urlencoded'
    };
     Map<String,dynamic> response=await  apiService.post(path: 'https://api.stripe.com/v1/payment_intents', data: stripePaymentModel.toMap(),headers:header );
     return response['client_secret'];
  }
}