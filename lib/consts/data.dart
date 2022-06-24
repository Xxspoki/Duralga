import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Data {
  static final List<Map<String, String>> gridItem = [
    {"name": "Маршруты"},
    {"name": "Остановки"},
    {"name": "Места"},
    {"name": "Карты"},
    {"name": "Инфо"},
    {"name": "Нравиться"},
  ];

  static final List<Map<String, SvgPicture>> iconItem = [
    {
      "icon": SvgPicture.asset(
        'assets/icons/routes.svg',
      )
    },
    {"icon": SvgPicture.asset('assets/icons/bus_stop.svg')},
    {"icon": SvgPicture.asset('assets/icons/places.svg')},
    {"icon": SvgPicture.asset('assets/icons/map.svg')},
    {"icon": SvgPicture.asset('assets/icons/info.svg')},
    {"icon": SvgPicture.asset('assets/icons/star.svg')},
  ];

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
