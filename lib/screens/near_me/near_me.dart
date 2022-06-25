import 'package:duralga/screens/near_me/components/app_bar.dart';
import 'package:duralga/screens/near_me/components/body.dart';
import 'package:flutter/material.dart';

class BusLocation extends StatelessWidget {
  const BusLocation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
