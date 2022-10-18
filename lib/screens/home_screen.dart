import 'package:ajudar/utils/app_styles.dart';
import 'package:ajudar/utils/app_data.dart';
import 'package:ajudar/widgets/ong_widget.dart';
import 'package:ajudar/widgets/wave.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xFF8EC5FC),
          Color(0xFFFFC3FC),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Color(0xffde9ed6),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(children: [
            Opacity(
              opacity: 0.2,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Color(0xFFAA336A),
                  height: 125,
                ),
              ),
            ),
            Opacity(
              opacity: 0.4,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Color(0xFFCC90C9),
                  height: 140,
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 30, left: 30, top: 15, bottom: 20),
              child: Center(
                child: Text(
                  "Doe para ajudar\nquem precisa",
                  style: Styles.headLineStyle1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          ...ongList.map((ong) => Ong(ong: ong)).toList()
        ],
      ),
    );
  }
}
