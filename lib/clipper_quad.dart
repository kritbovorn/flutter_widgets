import 'package:flutter/material.dart';

class ClipperQuad extends StatelessWidget {
  const ClipperQuad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wave Curve Design'),
      ),
      body: SizedBox(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: ClipPath(
                clipper: CustomClipQuad(),
                child: Container(
                  color: Colors.deepOrangeAccent,
                  height: 200,
                ),
              ),
            ),

            ClipPath(
              clipper: CustomClipQuad(),
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepOrangeAccent,
                height: 180,
                child: const Text(
                  'Clipper Wave',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipQuad extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    double w = size.width;
    double h = size.height;

    Path path = Path()
      ..lineTo(0, h)
      ..lineTo(w * 0.1, h)
      ..quadraticBezierTo(w * 0.5, h * 0.5, w - (w * 0.1), h)
      ..lineTo(w, h)
      ..lineTo(w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

