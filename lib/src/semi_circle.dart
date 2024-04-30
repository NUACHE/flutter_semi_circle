import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlutterSemiCircle extends StatelessWidget {
  final double height;
  final double width;
  final double totalValue;
  final double currentValue;

  /// A double of how thick you want the semicircle to be
  final double thickness;

  /// This is the background color of the semicircle
  final Color backgroundColor;

  /// This is the foreground color of the semicircle
  final Color foregroundColor;

  /// Pass a widget as a child
  final Widget child;

  const FlutterSemiCircle(
      {super.key,
      required this.height,
      required this.width,
      this.thickness = 20,
      this.backgroundColor = Colors.lightBlue,
      this.foregroundColor = const Color.fromARGB(255, 33, 91, 139),
      required this.totalValue,
      required this.currentValue,
      required this.child});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height / 2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: width,
              height: height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomPaint(
                  painter: PathPainter(
                      strokeWidth: thickness,
                      backgroundColor: backgroundColor,
                      foregroundColor: foregroundColor,
                      totalValue: (totalValue / 180) * 180,
                      currentValue: (currentValue / totalValue) * 180),
                ),
              ),
            ),
          ),
          SizedBox(
            width: width,
            height: height / 2,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 4, right: width / 4, top: height / 4),
                  child: child),
            ),
          )
        ],
      ),
    );
  }
}

class PathPainter extends CustomPainter {
  final double strokeWidth;
  final Color backgroundColor;
  final Color foregroundColor;
  final double totalValue;
  final double currentValue;

  PathPainter({
    super.repaint,
    required this.strokeWidth,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.totalValue,
    required this.currentValue,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    Paint foregroundPaint = Paint()
      ..color = foregroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // Method to convert degree to radians
    double degToRad(num deg) => deg * (math.pi / 180.0);

    Path backgroundPath = Path();
    Path foregroundPath = Path();
    // Adds an arc
    backgroundPath.addArc(Rect.fromLTWH(0, 0, size.width, size.height),
        degToRad(180), degToRad(360));
    foregroundPath.addArc(Rect.fromLTWH(0, 0, size.width, size.height),
        degToRad(180), degToRad(currentValue));
    canvas.drawPath(backgroundPath, backgroundPaint);
    canvas.drawPath(foregroundPath, foregroundPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
