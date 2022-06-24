// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:duralga/constants.dart';
import 'package:duralga/consts/data.dart';
import 'package:duralga/screens/route/route_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollableGridButtons extends StatelessWidget {
  final controller;
  ScrollableGridButtons({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final gridList = Data.gridItem;
  final iconList = Data.iconItem;

  static final navigatorItem = [
    (_) => (_) {},
    (_) => (_) {},
    (_) => (_) {},
    (_) => (_) {},
    (_) => (_) {},
    (_) => (_) {},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height / 4.0),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: gridList.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent:
                  MediaQuery.of(context).size.width.toDouble() / 3.3),
          // controller: controller,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: TextButton(
                clipBehavior: Clip.antiAlias,
                onPressed: () {
                  Get.toNamed('/route');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      kGreenSecondaryColor.withOpacity(0.8)),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius / 2),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child: iconList[index]["icon"]),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: kDefaultPadding / 4),
                      child: Text(
                        gridList[index]["name"]!,
                        style: const TextStyle(
                            fontSize: kCustomFontSize / 1.5,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
