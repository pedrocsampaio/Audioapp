import 'package:flutter/material.dart';
import 'Scenes/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'DM Sans', // Garantir que 'DM Sans' seja carregada
      ),
      home: const SearchPage(), // Chama a tela de pesquisa
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
    );
  }
}
