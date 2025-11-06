import 'package:fruitapp/generated/l10n.dart';

String  getbuttonName(int currentPage) {
if(currentPage==3)
{
  return S.current.confirm_and_continue;
}else{
  return S.current.checkout_next;
}

  }