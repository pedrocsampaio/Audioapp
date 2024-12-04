import 'package:flutter/material.dart';
import '../Detail/overview.dart';
import '../search/search.dart';

class HomeRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/productDetails':
        final product = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsPage(product: product),
        );
      case '/search':
        final searchQuery = settings.arguments as String; 
        return MaterialPageRoute(
          builder: (_) => SearchPage(searchQuery: searchQuery), 
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

