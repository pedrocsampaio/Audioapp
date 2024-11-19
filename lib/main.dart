import 'package:flutter/material.dart';
import 'package:audio_app/DesignSystem/Pages/Login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Login Screen App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'DMSans',
      ),
      home: LoginScreen(),
    );
  }
}
