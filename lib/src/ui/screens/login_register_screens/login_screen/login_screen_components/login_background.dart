import 'dart:ui';

import 'package:flutter/material.dart';

class LoginBackGround extends StatelessWidget {
  const LoginBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _Circules(MediaQuery.of(context).size),
      ),
    );
  }
}

class _Circules extends CustomPainter {
  _Circules(this.size);
  final Size size;

  final Paint _greatCircle = Paint()
    ..color = Colors.pink
    ..strokeWidth = 1;
  final Paint _smallCircle = Paint()
    ..color = Colors.pink.shade800
    ..strokeWidth = 1
    ..imageFilter =
        ImageFilter.blur(sigmaX: 10, sigmaY: 10, tileMode: TileMode.decal);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(0, 0), size.width * .3, _greatCircle);
    canvas.drawCircle(const Offset(0, 0), size.width * .25, _smallCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
