import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/models/stripe_model/stripe_payment_model.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';

abstract class StripeRepo {

  Future<Either<Failure,void>>createPayment({required StripePaymentModel stripePaymentModel});
}