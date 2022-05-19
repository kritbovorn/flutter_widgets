import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  const Clipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,  // set transparent Need
        toolbarHeight: screenHeight * 0.15,   // defined custom height
        elevation: 0,                // need to cut out layer
        flexibleSpace: ClipPath(    // return  Widget
          clipper: CustomClipQuad(),
          child: Container(
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 18, 2, 119),
            child: const Text(
              'Clipper',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

// Custom AppBar() Clipper Path
class CustomClipQuad extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path()
      ..lineTo(0, h)
      ..lineTo(w * 0.1, h)
      ..quadraticBezierTo(w * 0.5, h * 0.4, w - (w * 0.1), h)
      ..lineTo(w, h)
      ..lineTo(w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
