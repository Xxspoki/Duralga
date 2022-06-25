import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Data {
  final List slidingText = [
    'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
    'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
  ];

  static List listFlagCountry = [
    SvgPicture.asset(
      'assets/icons/russia.svg',
      fit: BoxFit.fitHeight,
      height: 18,
    ),
    SvgPicture.asset(
      'assets/icons/turkmen.svg',
      fit: BoxFit.fitHeight,
      height: 18,
    ),
    SvgPicture.asset(
      'assets/icons/english.svg',
      fit: BoxFit.fitHeight,
      height: 18,
    ),
  ];

  static String dropdownvalue = 'Русский';

  static var items = [
    'Русский',
    'Turkmen',
    'English',
  ];
}
