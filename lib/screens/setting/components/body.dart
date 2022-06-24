// ignore_for_file: unused_field

import 'package:duralga/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // bool _checkboxListTile = false;
  int _selectedIndex = 0;

  List<String> listCountry = ['Russian', 'Turkmen', 'English'];
  List listFlagCountry = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                        builder: (context, StateSetter setState) {
                      return AlertDialog(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        title: const Text('Выбрать язык'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            listCountry.length,
                            (index) => Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  height:
                                      MediaQuery.of(context).size.height / 16,
                                  child: CheckboxListTile(
                                    contentPadding: EdgeInsets.zero,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(listCountry[index]),
                                    value: _selectedIndex == index,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                    ),
                                    child: listFlagCountry[index]),
                              ],
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, '/'),
                            child: const Text(
                              'ОТМЕНА',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, '/'),
                            child: const Text('СОХРАНИТЬ'),
                          ),
                        ],
                      );
                    });
                  }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Язык'),
                  Row(
                    children: [
                      const Text('Русский  '),
                      SvgPicture.asset(
                        'assets/icons/russia.svg',
                        fit: BoxFit.fitHeight,
                        height: 18,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const CustomDivider(),
            const Text('Оценить приложение'),
            const CustomDivider(),
            const Text('Политика конфендициальности'),
            const CustomDivider(),
            const Text('Условия предоставления услуг'),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'ЛОГО',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
        const Text('Версия: 0.0.1'),
        Image.asset(
          'assets/images/ashgabat.png',
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
