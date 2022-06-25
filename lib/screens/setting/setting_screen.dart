import 'package:duralga/constants.dart';
import 'package:duralga/screens/setting/components/app_bar.dart';
import 'package:duralga/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/custom_divider.dart';

final List slidingText = [
  'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
  'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
];

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

String dropdownvalue = 'Русский';

var items = [
  'Русский',
  'Turkmen',
  'English',
];

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Язык',
                          style: TextStyle(
                              color: kBlueColor, fontWeight: FontWeight.w500),
                        ),
                        DropdownButton(
                          elevation: 0,
                          iconEnabledColor: kBlueColor,
                          value: dropdownvalue,
                          icon: const Icon(Icons.arrow_drop_down),
                          underline: Container(height: 1, color: kBlueColor),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Row(
                                children: [
                                  Text(
                                    items,
                                    style: const TextStyle(color: kBlueColor),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                              // ignore: avoid_print
                              print('language dropdown works');
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () =>
                          {showCustomSlidingBar(context, mWidth, mHeight)},
                      child: const Text('Оценить приложение')),
                  const CustomDivider(),
                  TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () =>
                          {showCustomSlidingBar(context, mWidth, mHeight)},
                      child: const Text('Политика конфендициальности')),
                  const CustomDivider(),
                  TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () =>
                          {showCustomSlidingBar(context, mWidth, mHeight)},
                      child: const Text('Условия предоставления услуг')),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: kBlueColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'ЛОГО',
                  style: TextStyle(color: kWhiteColor, fontSize: 40),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Text('Версия: 0.0.1'),
          Image.asset(
            'assets/images/ashgabat.png',
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  Future<dynamic> showCustomSlidingBar(
      BuildContext context, double mWidth, double mHeight) {
    return showModalBottomSheet(
      backgroundColor: Colors.white.withOpacity(0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            color: const Color.fromRGBO(0, 0, 0, 0.001),
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.95,
              builder: (_, controller) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              controller: controller,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    slidingText[0],
                                    style: const TextStyle(),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context, false),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black54,
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
