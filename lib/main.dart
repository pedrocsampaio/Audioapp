import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Scenes/Login/login_screen.dart';
import 'Scenes/Home/home.dart';
import 'Scenes/search/search.dart';
import 'Scenes/Detail/overview.dart';
import 'DesignSystem/Components/Carousel/category_view_model.dart';
import 'DesignSystem/Components/Cards/product_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ChangeNotifierProvider(create: (_) => ProductViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => LoginScreen());
          case '/home':
            return MaterialPageRoute(builder: (_) => HomeScreen());
          case '/search':
            final searchQuery = settings.arguments as String? ?? '';
            return MaterialPageRoute(builder: (_) => SearchPage(searchQuery: searchQuery));
          case '/productDetails':
            final product = settings.arguments as Map<String, String>;
            return MaterialPageRoute(builder: (_) => ProductDetailsPage(product: product));
          default:
            return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
            );
        }
      },
    );
  }
}
