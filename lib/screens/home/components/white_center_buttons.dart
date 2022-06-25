// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WhiteFloatingButtons extends StatelessWidget {
  const WhiteFloatingButtons({
    Key? key,
    required PanelController this.panelController,
  }) : super(key: key);

  final panelController;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBorderRadius / 1.5),
          topRight: Radius.circular(kBorderRadius / 1.5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: tooglePanel,
            child: Container(
              margin: const EdgeInsets.only(top: kDefaultPadding / 2),
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.search, color: kWhiteColor, size: kIconSize),
                  SizedBox(width: 10),
                  Text(
                    'Как доехать?',
                    style: TextStyle(
                        fontSize: kCustomFontSize, color: kWhiteColor),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.home, color: kWhiteColor, size: kIconSize),
                  SizedBox(width: 10),
                  Text(
                    'Обратно домой',
                    style: TextStyle(
                        fontSize: kCustomFontSize, color: kWhiteColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tooglePanel() {
    panelController.isPanelOpen
        ? panelController.close()
        : panelController.open();
  }
}
