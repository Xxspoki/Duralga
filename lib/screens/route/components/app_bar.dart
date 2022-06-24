import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: GestureDetector(
      onTap: () {
        Get.toNamed('/route-search');
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2, vertical: kDefaultPadding * .9),
        decoration: BoxDecoration(
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(kBorderRadius / 2)),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  'assets/icons/blue_bus.svg',
                  fit: BoxFit.fitHeight,
                  height: kIconSize,
                )),
            const Expanded(
              flex: 10,
              child: Text('Search for bus stops...'),
            ),
            Expanded(
              flex: 2,
              child: IconButton(
                  splashRadius: 26,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    Get.toNamed('/setting');
                  },
                  icon: const Icon(Icons.settings)),
            ),
          ],
        ),
      ),
    ),
  );
}
