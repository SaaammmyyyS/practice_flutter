import 'package:flutter/material.dart';
import 'package:flutter_application_1/curveappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = screenHeight;

    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: ClipPath(
            clipper: CurveAppBar(isHighCurve: true),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: AppBar(
                title: const Text("Curve App Bar"),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
