import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColour = const Color(0xffFEF5ED);
  static Color lightPrimaryColour = const Color(0xffD3E4CD);
  static Color lightAccentColour = const Color(0xff99A799);
  static Color lightParticleColour = const Color(0x44948282);

  static Color darkBackgroundColour = const Color(0xff3D0000);
  static Color darkPrimaryColour = const Color(0xff950101);
  static Color darkAccentColour = const Color(0xffFF0000);
  static Color darkParticleColour = const Color(0x441C2A3D);

  const AppTheme._();
  static final lightTheme = ThemeData(
    //we used extension on ThemeData so to add a property to it namely 'particleColour'
    brightness: Brightness.light,
    primaryColor: lightPrimaryColour,
    //primarySwatch: Colors.white70,
    accentColor: lightAccentColour,
    backgroundColor: lightBackgroundColour,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    //we used extension on ThemeData so to add a property to it namely 'particleColour'
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColour,
    accentColor: darkAccentColour,
    backgroundColor: darkBackgroundColour,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static Brightness get currentSystemBrightness => SchedulerBinding
      .instance
      .window
      .platformBrightness; // it gives the status of brightness mode system

  static setStatusBarandNavigationBarColours({ThemeMode themeMode}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
          systemNavigationBarColor: themeMode == ThemeMode.light
              ? lightBackgroundColour
              : darkBackgroundColour,
          systemNavigationBarIconBrightness:
              themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
          systemNavigationBarDividerColor: Colors.transparent),
    );
  }
}

extension ThemeExtras on ThemeData {
  // extensions are used to extend default widgets of flutter
  //we used extension on ThemeData so to add a property to it namely 'particleColour'

  Color get particlesColour => this.brightness == Brightness.light
      ? AppTheme.lightParticleColour
      : AppTheme.darkParticleColour;
  // here we have used this.brightness variable , to which i think we ThemeData has a property "brihtness" and i have defined it in two differents instances of ThemeData, namely lightTheme and darkTheme
  // thats why i have put the conditional so that when the extention is used by any of the instances it will evaluate the condiional and extract its matched value and decide the apptheme and set particleColour accordingly
}
