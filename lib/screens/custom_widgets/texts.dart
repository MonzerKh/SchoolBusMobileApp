import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.isCenter = true,
      this.textDecoration = TextDecoration.none, this.maxLines})
      : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isCenter;
  final int? maxLines;

  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(

      text,
      overflow: TextOverflow.ellipsis,

      textAlign: isCenter ? TextAlign.center : TextAlign.start,
      maxLines: maxLines??1000,

      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: 'Schyler',
          decoration: textDecoration,
      ),
    );
  }
}
