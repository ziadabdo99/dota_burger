import 'package:dota_burger/features/auth/view/login_view.dart';
import 'package:dota_burger/features/auth/view/signup_view.dart';
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

      home: SignupView(),

    );
  }
}

