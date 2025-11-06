import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';



class ThemCubit extends Cubit<ThemeMode> {
  ThemCubit() : super(ThemeMode.light);

 void toggleThem()
 {
  emit(state==ThemeMode.light?ThemeMode.dark:ThemeMode.light);
 }
}
