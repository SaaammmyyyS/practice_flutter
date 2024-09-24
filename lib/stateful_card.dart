// stateful_card.dart

import 'package:flutter/material.dart';

class StatefulCard extends StatefulWidget {
  const StatefulCard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatefulCardState createState() => _StatefulCardState();
}

class _StatefulCardState extends State<StatefulCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Flutter Stateful Card',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tap to favorite:',
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
