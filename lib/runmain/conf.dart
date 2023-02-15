import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///////////////////////////////////////////////////////////

// use this
// builder: (context, child) {
// return MediaQuery(
// data: MediaQuery.of(context).copyWith(
// textScaleFactor: 1.0,
// ),
// child: child ?? Container(),
// );
// },

///////////////////////////////////////////////////////////

// multi language
// AppLocalizations.delegate
//     .load(const Locale("en"))
// .then((value) => General.mylang = value);
// return MaterialApp(
// localizationsDelegates: AppLocalizations.localizationsDelegates,
// supportedLocales: AppLocalizations.supportedLocales,
// debugShowCheckedModeBanner: false,
// title: 'AUIB Press',
// theme: ThemeData(
// primaryColor: primaryColor,
// appBarTheme: const AppBarTheme(
// elevation: 0,
// ),
// textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom()),
// fontFamily: "Cairo",
// colorScheme: ColorScheme.fromSwatch(primarySwatch: mycolor)
// .copyWith(background: backgroundColor),
// ),
// home: const SplashScreen());

///////////////////////////////////////////////////////////

myMaterialApp(Widget? home, String title) {
  return MaterialApp(
    builder: (context, child) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        child: child ?? Container(),
      );
    },
    debugShowCheckedModeBanner: false,
    title: title,
    home: home,
  );
}

myConf({color,backgroundColor}) {
  if (Platform.isAndroid) {
    const SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  MaterialColor mycolor = MaterialColor(color.value, <int, Color>{
    50: Color(color.value),
    100: Color(color.value),
    200: Color(color.value),
    300: Color(color.value),
    400: Color(color.value),
    500: Color(color.value),
    600: Color(color.value),
    700: Color(color.value),
    800: Color(color.value),
    900: Color(color.value),
  });
  return ThemeData(
    primaryColor: color,
    appBarTheme: const AppBarTheme(
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom()),
    fontFamily: "Cairo",
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: mycolor).copyWith(background: backgroundColor),
  );
}
