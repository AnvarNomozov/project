import 'package:flutter/material.dart';
import 'package:project/core/constants/color_const.dart';

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  Color? color = ColorConst.kPrimartBlack;
  FontWeight? fontWeight;
  TextWidget({
    Key? key,
    required this.text,
    this.color,
    required this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
