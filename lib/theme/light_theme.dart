import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme: appBarTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: floatingButtonTheme(),
    // textButtonTheme: textButtonTheme(),
    // elevatedButtonTheme: elevatedButtonTheme(),
    // fontFamily: "Muli",
    // textTheme: textTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
  );
}

TextButtonThemeData textButtonTheme() {
  return TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadius / 2),
        ),
      ),
      overlayColor:
          MaterialStateColor.resolveWith((states) => kGreenSecondaryColor),
      backgroundColor:
          MaterialStateProperty.all(kGreenSecondaryColor.withOpacity(0.8)),
      elevation: MaterialStateProperty.all(0),
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    toolbarHeight: 80,
    color: kWhiteColor,
    elevation: 0.3,
    iconTheme: IconThemeData(
      color: kBlueColor,
    ),
    titleTextStyle: TextStyle(color: kBlueColor, fontSize: kCustomFontSize),
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
  );
}

FloatingActionButtonThemeData floatingButtonTheme() {
  return const FloatingActionButtonThemeData(
    backgroundColor: kWhiteColor,
  );
}

// ElevatedButtonThemeData elevatedButtonTheme() {
//   return ElevatedButtonThemeData(
//     style: ButtonStyle(
//       // backgroundColor: MaterialStateProperty.all(kWhiteColor),
//       elevation: MaterialStateProperty.all(1),
//     ),
//   );
// }
