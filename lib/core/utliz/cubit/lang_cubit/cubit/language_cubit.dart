import 'dart:ui';

import 'package:bloc/bloc.dart';


class LanguageCubit extends Cubit<Locale > {
  LanguageCubit() : super(Locale('ar'));

  void toggleLanguage(String selectedLang)
  {
    emit(Locale(selectedLang));
  }
}
