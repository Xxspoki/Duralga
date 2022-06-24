import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    toolbarHeight: MediaQuery.of(context).size.height / 10,
    title: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          elevation: 4,
          onPressed: () {
            Get.back();
          },
          child: const Icon(
            Icons.close,
            color: kBlueColor,
            size: kIconSize * 1.2,
          ),
        ),
        const Spacer(),
        const Text(
          "Настройки приложения",
          style: TextStyle(color: kBlueColor, fontSize: kCustomFontSize),
        ),
        const Spacer(flex: 2),
      ],
    ),
  );
}
