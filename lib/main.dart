import 'package:flutter/material.dart';
import 'package:featured_app/register_screen.dart';
import 'package:featured_app/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // Custom button color
          ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
