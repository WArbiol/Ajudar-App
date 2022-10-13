import 'package:ajudar/utils/app_styles.dart';
import 'package:ajudar/utils/app_data.dart';
import 'package:ajudar/widgets/ong_widget.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xFF8EC5FC),
          Color(0xFFE0C3FC),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 20),
            child: Center(
              child: Text(
                "Doe para ajudar\nquem precisa",
                style: Styles.headLineStyle1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ...ongList.map((ong) => Ong(ong: ong)).toList()
        ],
      ),
    );
  }
}
