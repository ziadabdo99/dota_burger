import 'package:dota_burger/features/auth/views/login_view.dart';
import 'package:dota_burger/features/auth/views/signup_view.dart';
import 'package:dota_burger/root.dart';
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
             theme: ThemeData(
scaffoldBackgroundColor: Colors.white,
      ),
      home: Root(),

    );
  }
}

