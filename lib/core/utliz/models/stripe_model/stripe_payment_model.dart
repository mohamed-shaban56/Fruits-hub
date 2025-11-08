class StripePaymentModel {
  final int amount;
  final String currency;

  StripePaymentModel({required this.amount, required this.currency});


  Map<String,dynamic>toMap()=>{
    'amount':amount,
    'currency':currency,
     'automatic_payment_methods[enabled]': true,
  };

}
