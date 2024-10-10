import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_page.dart';
import 'sign_up_screen.dart';
import 'user_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signUp': (context) => const SignUpScreen(),
        '/users': (context) => const UserListScreen(),
      },
    );
  }
}
