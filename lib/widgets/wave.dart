import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 20);

    var firstStart = Offset(3 * size.width / 16, size.height - 55);
    var firstEnd = Offset(3 * size.width / 8, size.height - 20);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var seccoundStart = Offset(size.width / 2, size.height);
    var seccoundEnd = Offset(5 * size.width / 8, size.height - 20);

    path.quadraticBezierTo(
        seccoundStart.dx, seccoundStart.dy, seccoundEnd.dx, seccoundEnd.dy);

    var thirdStart = Offset(13 * size.width / 16, size.height - 55);
    var thirdEnd = Offset(size.width, size.height - 20);

    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);

    path.lineTo(size.width, 0);
    path.close;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
