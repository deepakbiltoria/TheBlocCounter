import 'package:bloc/bloc.dart';
import 'package:bloc_architecture_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

  // we will call this method at two instance 1st when the App starts and 2nd when brightnessMode (systemTheme) changes
  void updateAppTheme() {
    Brightness currentAppBrightness = AppTheme
        .currentSystemBrightness; // it takes the status of brightness mode of system from apptheme

    currentAppBrightness == Brightness.light
        ? _setTheme(ThemeMode.light)
        : _setTheme(ThemeMode.dark);
  }

  void _setTheme(ThemeMode themeMode) {
    // this function set theme of status and navigatin bar as dark or light ( thememode.light/dark) and according to ThemeMode propery status
    AppTheme.setStatusBarandNavigationBarColours(themeMode: themeMode);

    // here this fuction emit a state having value of current themeMode (thememode.light/dark)
    emit(ThemeState(themeMode: themeMode));
  }
}
