import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.space = 0,
    this.textAlign,
    this.fontWeight,
  });
  final String text;
  final double size;
  final Color color;
  final double space;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'TenorSans',
        fontSize: size,
        color: color,
        letterSpacing: space,
        fontWeight: fontWeight,
      ),
    );
  }
}
