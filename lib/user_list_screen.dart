import 'package:flutter/material.dart';
import 'user_map_screen.dart';

class UserListScreen extends StatelessWidget {
  final List<dynamic> users;

  const UserListScreen({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final double screenWidth = MediaQuery.of(context).size.width;

    // Set the base text size based on the screen width
    double baseTextSize = screenWidth < 400 ? 12 : 14; // Smaller base for narrow screens

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        backgroundColor: Colors.green[700], // Themed color
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                user['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: baseTextSize + 2, // Slightly larger for title
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow(Icons.person, 'Username: ${user['username']}', baseTextSize),
                  _buildRow(Icons.email, '${user['email']}', baseTextSize),
                  _buildRow(Icons.business, '${user['company']['name']}', baseTextSize),
                  _buildRow(Icons.comment, '${user['company']['catchPhrase']}', baseTextSize),
                  _buildRow(Icons.business_center, '${user['company']['bs']}', baseTextSize),
                  _buildRow(
                    Icons.location_on,
                    '${user['address']['suite']}, ${user['address']['street']}, ${user['address']['city']}, ${user['address']['zipcode']}',
                    baseTextSize,
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.map),
                onPressed: () {
                  final double lat = double.parse(user['address']['geo']['lat']);
                  final double lng = double.parse(user['address']['geo']['lng']);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserMapScreen(
                        latitude: lat,
                        longitude: lng,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to build a row with icon and text
  Widget _buildRow(IconData icon, String text, double baseTextSize) {
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: baseTextSize), // Adjust font size dynamically
          ),
        ),
      ],
    );
  }
}
