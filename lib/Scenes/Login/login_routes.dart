import 'package:flutter/material.dart';

class LoginRouter {
  static void navigateToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, '../Home/home.dart'); // Troca para a tela Home
  }

  static void navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, '/signup'); // Redireciona para a tela de Sign Up
  }
}
