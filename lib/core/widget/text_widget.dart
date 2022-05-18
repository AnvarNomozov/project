import 'package:flutter/material.dart';
import 'package:project/core/constants/color_const.dart';

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  Color? color = ColorConst.kPrimartBlack;
  FontWeight? fontWeight;
  TextAlign? textalignm = TextAlign.start;
  TextWidget({
    Key? key,
    required this.text,
    this.color,
    required this.fontSize,
    this.fontWeight,
    this.textalignm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalignm,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
