import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';

class BottomAddWidget extends StatelessWidget {
  const BottomAddWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kGreenPrimaryColor.withGreen(150),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 54,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Здесь будет ваша реклама',
                style: TextStyle(
                    fontSize: 16,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Commodo adipisicing nostrud sit sint \nun et in ead est quis incididunt",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
