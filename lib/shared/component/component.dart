import 'package:flutter/material.dart';

class CustomClippers extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0010250, 0);
    path0.lineTo(0, size.height * 0.5613500);
    path0.lineTo(size.width * 0.2589000, size.height * 0.5455000);
    path0.quadraticBezierTo(size.width * 0.4359000, size.height * 0.5250125,
        size.width * 0.4940000, size.height * 0.5170000);
    path0.quadraticBezierTo(size.width * 0.5550750, size.height * 0.5090625,
        size.width * 0.6662000, size.height * 0.4834625);
    path0.lineTo(size.width * 0.8714500, size.height * 0.4354125);
    path0.lineTo(size.width, size.height * 0.3908875);
    path0.lineTo(size.width, 0);
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
