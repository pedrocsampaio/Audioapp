import 'package:flutter/material.dart';
import 'package:audio_app/DesignSystem/Pages/Login/login_screen.dart'; // Substitua pelo caminho correto para o arquivo login_screen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      title: 'Login Screen App',
      theme: ThemeData(
        primarySwatch: Colors.green, // Define o tema do app
        fontFamily: 'DMSans', // Certifique-se de que a fonte DM Sans foi configurada
      ),
      home: LoginScreen(), // A tela inicial do app
    );
  }
}
