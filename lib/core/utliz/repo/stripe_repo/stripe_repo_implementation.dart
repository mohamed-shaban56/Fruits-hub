import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/core/utliz/repo/stripe_repo/stripe_repo.dart';
import 'package:fruitapp/core/utliz/services/stripe_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';

class StripeRepoImplementation extends StripeRepo{

  StripeService stripeService;
  StripeRepoImplementation({required this.stripeService});
  @override
  Future<Either<Failure, void>> createPayment({required StripePaymentModel stripePaymentModel})async {

    try{
 await  stripeService.creatPayment(stripePaymentModel: stripePaymentModel);
 return right(null);
    }catch (e)
    {
return left(Failure(e.toString()));
    }
 
  }
}