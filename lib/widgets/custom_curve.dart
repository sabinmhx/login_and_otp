import 'package:flutter/material.dart';

/// Curve for top of the screen.
class CustomCurve extends StatelessWidget {
  const CustomCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        size: const Size(20, 20),
        painter: LinePainter(),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// X and Y coordinates of starting point of curve.
    final double startingPointXAxis = size.width * 11.0;
    final double startingPointYAxis = size.height * 0.0;

    /// X and Y coordinates of control point of fill curve (X1, Y1).
    final double fillCurveControlPointX1 = size.width * 15.0;
    final double fillCurveControlPointY1 = size.height * 17.0;

    /// X and Y coordinates of control point of fill curve (X2, Y2).
    final double fillCurveEndPointX2 = size.width * 25.0;
    final double fillCurveEndPointY2 = size.height * 0.0;

    // Paint to fill the curve
    var fillPaint = Paint()
      ..color = Colors.grey[200]!
      ..style = PaintingStyle.fill // Fill Style for paint fill
      ..strokeWidth = 1;

    var fillPath = Path();
    fillPath.moveTo(
      startingPointXAxis,
      startingPointYAxis,
    );
    fillPath.quadraticBezierTo(
      fillCurveControlPointX1,
      fillCurveControlPointY1,
      fillCurveEndPointX2,
      fillCurveEndPointY2,
    );

    canvas.drawPath(fillPath, fillPaint); // Draws the path with color fill

    // Paint to have border around the curve
    var borderPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke // Stroke style for border
      ..strokeWidth = 2;

    var borderPath = Path();
    // -1 is done because the border is around the paint fill
    borderPath.moveTo(
      startingPointXAxis - 1,
      startingPointYAxis - 1,
    );
    borderPath.quadraticBezierTo(
        fillCurveControlPointX1 - 1,
        fillCurveControlPointY1 - 1,
        fillCurveEndPointX2 - 1,
        fillCurveEndPointY2 - 1);

    canvas.drawPath(borderPath, borderPaint); // Draws the path as border
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
