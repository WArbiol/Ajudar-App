import 'dart:ffi';

import 'package:ajudar/utils/app_layout.dart';
import 'package:ajudar/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final String colorHexString;
  final String textColorHexString;
  const TextBox(
      {super.key,
      required this.text,
      required this.colorHexString,
      required this.textColorHexString});

  @override
  Widget build(BuildContext context) {
    int colorHex = int.parse(colorHexString);
    int textColorHex = int.parse(textColorHexString);
    final size = AppLayout.getSize(context);
    return Container(
      height: 160,
      padding: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 10),
      margin: const EdgeInsets.only(bottom: 10),
      width: size.width * .48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(colorHex),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 19,
              color: Color(textColorHex),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
