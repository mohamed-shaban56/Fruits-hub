import 'package:fruitapp/generated/l10n.dart';

String  getbuttonName(int currentPage,String paymentMethod) {
if(currentPage==3)
{
  return S.current.confirm_and_continue;
}else if(currentPage==4)
{
  return "${S.current.pay_with} $paymentMethod";
}


else{
  return S.current.checkout_next;
}

  }