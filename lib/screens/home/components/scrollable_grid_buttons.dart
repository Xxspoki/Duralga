// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:duralga/constants.dart';
import 'package:duralga/screens/route/route_screen.dart';
import 'package:duralga/theme/button_styles/text_button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ScrollableGridButtons extends StatelessWidget {
  const ScrollableGridButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  style: TextButtonStyle.textButtonStyle,
                  onPressed: () => Get.to(const RouteScreen()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/routes.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Маршруты',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButtonStyle.textButtonStyle,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/icons/bus_stop.svg'),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Остановки',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  style: TextButtonStyle.textButtonStyle,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/places.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Места',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  style: TextButtonStyle.textButtonStyle,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/map.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Карты',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  style: TextButtonStyle.textButtonStyle,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/icons/info.svg'),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Инфо',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: mWidth / 3.5,
              height: mWidth / 4.2,
              child: Expanded(
                child: TextButton(
                  style: TextButtonStyle.textButtonStyle,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: Text(
                          'Нравиться',
                          style: TextStyle(
                              fontSize: kCustomFontSize / 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// SizedBox(
//       height: (MediaQuery.of(context).size.height / 4.0),
//       width: MediaQuery.of(context).size.width,
//       child: Center(
//         child: GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: gridList.length,
//           scrollDirection: Axis.horizontal,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisExtent:
//                   MediaQuery.of(context).size.width.toDouble() / 3.3),
//           // controller: controller,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(kDefaultPadding / 4),
//               child: TextButton(
//                 onPressed: () {
//                 },
//                 style: ButtonStyle(
//                   overlayColor: MaterialStateColor.resolveWith(
//                       (states) => kGreenSecondaryColor),
//                   backgroundColor: MaterialStateProperty.all(
//                       kGreenSecondaryColor.withOpacity(0.8)),
//                   elevation: MaterialStateProperty.all(0),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(kBorderRadius / 2),
//                     ),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(child: iconList[index]["icon"]),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(bottom: kDefaultPadding / 4),
//                       child: Text(
//                         gridList[index]["name"]!,
//                         style: const TextStyle(
//                             fontSize: kCustomFontSize / 1.5,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
