import 'package:dribble_create_account_ios/login.dart';
import 'package:dribble_create_account_ios/register.dart';
import 'package:dribble_create_account_ios/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dribble Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const WelcomeScreen(),
      routes: {
        'welcome': (context) => const WelcomeScreen(),
        'register': (context) => const RegisterScreen(),
        'login': (context) => const LoginScreen()
      },
    );
  }
}
