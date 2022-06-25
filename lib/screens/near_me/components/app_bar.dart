import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
        Container(
          child: Row(
            children: [
              const Text('as'),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/settings.svg'),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
