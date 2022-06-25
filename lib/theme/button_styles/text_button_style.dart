import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';

class TextButtonStyle {
  TextButtonStyle._();

  static final textButtonStyle = ButtonStyle(
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
  );
}
