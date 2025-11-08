
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/core/utliz/services/stripe_remote_data_source.dart';

class StripeService{
  StripeRemoteDataSource stripeRemoteDataSource;
  StripeService(this.stripeRemoteDataSource);
 Future<String> createPaymentIntent(StripePaymentModel stripePaymentModel)async
  {
    String clientSecret=await   stripeRemoteDataSource.getUserSecretKey(stripePaymentModel);
    return clientSecret;
  }
  Future<void> initPaymentSheet({required String clientSecret}) async {
    try {
     

     await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // Set to true for custom flow
          customFlow: false,
          // Main params
          merchantDisplayName: 'Flutter Stripe Store Demo',
          paymentIntentClientSecret: clientSecret,));
          // Customer keys
          
     
    } catch (e) {
  
      throw Exception('error in initpaymentsheet $e');
    
    }
}

creatPayment({required StripePaymentModel stripePaymentModel})async
{
  String clientSecret= await createPaymentIntent(stripePaymentModel);
   await initPaymentSheet(clientSecret: clientSecret);
   await Stripe.instance.presentPaymentSheet();
}

}