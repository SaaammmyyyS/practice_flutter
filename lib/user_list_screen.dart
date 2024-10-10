import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: users.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user['name'],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text('Username: ${user['username']}'),
                        Text('Email: ${user['email']}'),
                        const SizedBox(height: 8.0),
                        Text('Phone: ${user['phone']}'),
                        Text('Website: ${user['website']}'),
                        const SizedBox(height: 8.0),
                        Text(
                          'Address: ${user['address']['street']}, '
                          '${user['address']['suite']}, ${user['address']['city']}',
                        ),
                        Text('Company: ${user['company']['name']}'),
                        Text('catch Phrase: ${user['company']['catchPhrase']}'),
                        Text('bs: ${user['company']['bs']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
