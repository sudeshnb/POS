import 'package:flutter/material.dart';
import 'package:pos/core/color/colors.dart';
import 'package:pos/core/constants.dart';
import 'package:pos/core/res/responsive.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final String textValue;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: Responsive.isDesktop(context) ? 300 : 250),
      child: Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: defaultPadding),
          Text(
            text,
            style: TextStyle(
                fontSize: Responsive.textSize * 0.8,
                fontWeight: FontWeight.w500,
                color: textColor),
          ),
          const Spacer(),
          Text(
            textValue,
            style: TextStyle(
                fontSize: Responsive.textSize * 0.8, color: textColor),
          )
        ],
      ),
    );
  }
}
