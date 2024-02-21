import 'package:flutter/material.dart';

class Typography1 extends StatelessWidget {
  const Typography1(
      {super.key,
      required this.data,
      this.textColor = Colors.black,
      this.underLine = false,
      this.fontWeight,
      this.align});

  final String data;
  final Color textColor;
  final bool underLine;
  final TextAlign? align;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        color: textColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: underLine ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
