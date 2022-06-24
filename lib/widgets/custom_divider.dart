import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double height;
  static const Color defaultColor = Colors.grey;
  static const double defaultHeight = 1;
  const CustomDivider({
    Key? key,
    this.color = defaultColor,
    this.height = defaultHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white,
              color,
              Colors.white,
            ],
          ),
        ),
      ),
    );
  }
}
