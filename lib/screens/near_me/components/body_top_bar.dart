import 'package:flutter/material.dart';

class BodyTopBar extends StatelessWidget {
  const BodyTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xFF00c57e)))),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 100, 180, 246),
            ),
            child: const Icon(
              Icons.directions_bus_filled,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'Beauty World Stn Exit A',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'UPP BT TIMAH RD ~ 42099',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(255, 238, 214, 0),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 238, 214, 0),
                            ),
                            Text(
                              '  STAR ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 238, 214, 0),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(255, 76, 182, 172),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.directions,
                              color: Color.fromARGB(255, 76, 182, 172),
                            ),
                            Text(
                              '  DIRECTIONS ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 76, 182, 172),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
