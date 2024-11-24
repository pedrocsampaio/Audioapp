import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DesignSystem/Components/Cards/product_view_model.dart';
import 'DesignSystem/Components/Carousel/carousel_view_model.dart';
import 'DesignSystem/Components/Carousel/category_view_model.dart';
import 'DesignSystem/Components/InputField/input_field_view_model.dart';
import 'Scenes/Login/login_screen.dart'; // Substitua pelo caminho correto para o arquivo login_screen.dart

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ChangeNotifierProvider(create: (_) => StyledInputFieldViewModel()),
        ChangeNotifierProvider(create: (_) => ProductViewModel()),
        Provider<List<CarouselBannerViewModel>>(create: (_) => bannerList),
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
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

