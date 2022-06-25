import 'package:duralga/screens/near_me/components/body_top_bar.dart';
import 'package:duralga/screens/near_me/components/list_item.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BodyTopBar(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: const [
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          ),
        ),
      ],
    );
  }
}
