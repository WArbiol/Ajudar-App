import 'package:ajudar/utils/app_layout.dart';
import 'package:ajudar/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ImageText extends StatelessWidget {
  final String text;
  final String path;
  const ImageText({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 330,
      padding: const EdgeInsets.all(12),
      width: size.width * .52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 3,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(path))),
          ),
          const Gap(12),
          Text(text, style: Styles.headLineStyle3)
        ],
      ),
    );
  }
}
