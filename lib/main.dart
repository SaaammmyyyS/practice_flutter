import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Card Example'),
        ),
        body: const Center(
          child: MyCard(),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Shadow depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: const Padding(
        padding: EdgeInsets.all(16), // Padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Card Title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This is a simple card with some text inside it.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
