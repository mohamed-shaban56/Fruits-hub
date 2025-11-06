import 'package:fruitapp/core/app_image_assets.dart';
import 'package:fruitapp/core/utliz/constant.dart';

class PaymentModel {
  final String image;
  final String paymentMethod;

  PaymentModel({required this.image, required this.paymentMethod});
}
List<PaymentModel>paymentMethods=[
  PaymentModel(image: Assets.assetsImagesPaypal, paymentMethod: Constant.kpaypal),
  PaymentModel(image: Assets.assetsImagesStripe, paymentMethod: Constant.kstripe),
  PaymentModel(image: Assets.assetsImagesPaymob, paymentMethod: Constant.kpaymob)
];