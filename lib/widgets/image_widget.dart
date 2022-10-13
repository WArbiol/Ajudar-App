import 'package:ajudar/utils/app_layout.dart';
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String path;
  const ImageBox({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: 10),
      width: size.width * .43,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(path)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 3,
              spreadRadius: 2,
            )
          ]),
    );
  }
}
