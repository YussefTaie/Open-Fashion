import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.space = 0,
    this.textAlign,
     
  });
  final String text;
  final double size;
  final Color color;
  final double space;
  final TextAlign? textAlign;

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
        
      ),
    );
  }
}
