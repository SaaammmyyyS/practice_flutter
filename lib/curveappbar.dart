import 'package:flutter/material.dart';

class CurveAppBar extends CustomClipper<Path> {
  final bool isHighCurve; // Determines the type of curve

  // Default is false for low curve
  CurveAppBar({this.isHighCurve = true});

  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0); // Start at the top-left corner

    if (isHighCurve) {
      // High wave variant (middle to bottom to top with lesser curve)
      path.lineTo(0, size.height / 2); // Start at the middle
      path.quadraticBezierTo(size.width / 4, size.height * 0.55, size.width / 2, size.height / 2); // Slight dip
      path.quadraticBezierTo(size.width * 3 / 4, size.height * 0.45, size.width, size.height / 2); // Slight rise
    } else {
      // Low wave variant (middle to top to bottom with lesser curve)
      path.lineTo(0, size.height / 2); // Start at the middle
      path.quadraticBezierTo(size.width / 4, size.height * 0.45, size.width / 2, size.height / 2); // Slight rise
      path.quadraticBezierTo(size.width * 3 / 4, size.height * 0.55, size.width, size.height / 2); // Slight dip
    }

    path.lineTo(size.width, 0); // Connect to the top-right corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // Reclip when the state changes
  }
}
