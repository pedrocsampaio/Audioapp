import 'package:flutter/material.dart';
import '../Home/home.dart';

class LoginRouter {
  static void navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
