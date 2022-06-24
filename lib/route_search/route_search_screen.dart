import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RouteSearchScreen extends StatefulWidget {
  const RouteSearchScreen({Key? key}) : super(key: key);

  @override
  State<RouteSearchScreen> createState() => _RouteSearchScreenState();
}

class _RouteSearchScreenState extends State<RouteSearchScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              IconButton(
                splashRadius: 26,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: kBlueColor,
                ),
              ),
              TextField(
                controller: textController,
                cursorHeight: 20,
                autofocus: true,
                cursorColor: kBlueColor,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search for bus stops...',
                  hintStyle: TextStyle(color: kBlueColor),
                  prefixIconColor: kBlackColor,
                ),
              ),
              IconButton(
                splashRadius: 26,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  textController.clear();
                },
                icon: const Icon(Icons.clear, color: kBlueColor),
              )
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
