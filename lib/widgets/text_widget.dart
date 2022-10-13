import 'dart:ffi';

import 'package:ajudar/utils/app_layout.dart';
import 'package:ajudar/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final String colorHexString;
  const TextBox({super.key, required this.text, required this.colorHexString});

  @override
  Widget build(BuildContext context) {
    int colorHex = int.parse(colorHexString);
    final size = AppLayout.getSize(context);
    return Container(
      height: 160,
      padding: EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      width: size.width * .43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(colorHex),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 22, color: Styles.textColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
