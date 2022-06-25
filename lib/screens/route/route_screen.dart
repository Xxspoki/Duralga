import 'package:duralga/constants.dart';
import 'package:duralga/screens/near_me/near_me.dart';
import 'package:duralga/screens/route/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: buildAppBar(ctx: context),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: ListView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'БЛИЖАЙШИЕ ОСТАНОВКИ',
                style: TextStyle(color: kBlackColor),
              ),
            ),
            ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int tindex) {
                return GestureDetector(
                  onTap: () => Get.to(const BusLocation()),
                  behavior: HitTestBehavior.opaque,
                  child: Card(
                    color: kWhiteColor.withOpacity(0.85),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            color: kBlueColor,
                            child: SvgPicture.asset(
                              'assets/icons/white_bus_without.svg',
                              fit: BoxFit.fitHeight,
                              height: kIconSize * 2,
                            ),
                          ),
                          title: const Text('Beauty WOrld Stn Exit A'),
                          subtitle: Text(
                            'UPP BT TIMAH RD ~ 42099',
                            style:
                                TextStyle(color: kBlackColor.withOpacity(0.6)),
                          ),
                        ),
                        ButtonBar(
                          buttonPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                          // alignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('75'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('67'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('173'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },

              // [
              //
            ),
          ],
        ),
      ),
    );
  }
}
