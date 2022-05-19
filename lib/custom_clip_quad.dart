import 'package:flutter/material.dart';

class CustomClipQuad extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path()
      ..lineTo(0, h)
      ..lineTo(w * 0.1, h)
      ..quadraticBezierTo(w * 0.5, h * 0.3, w - (w * 0.1), h)
      ..lineTo(w, h)
      ..lineTo(w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}