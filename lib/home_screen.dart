import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Ensure you have this image in your assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned content at the bottom
          const Positioned(
            bottom: 200, // Adjust to position above buttons
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  'Water Delivery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 8),
                Text(
                  'We deliver water at any point of the Earth in 30 minutes',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Positioned buttons at the bottom
          Positioned(
            bottom: 40,
            left: 16,
            right: 16,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to login page
                    Navigator.pushNamed(context, '/login'); // Ensure you have the route set up
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // White background
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 50), // Stretch button
                    side: const BorderSide(color: Colors.blue), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Adjust this value for smaller radius
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.blue, // Blue text color
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    // Navigate to sign up page
                    Navigator.pushNamed(context, '/signUp'); // Ensure you have the route set up
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 50), // Stretch button
                    backgroundColor: const Color.fromARGB(255, 59, 113, 185),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Adjust this value for smaller radius
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
