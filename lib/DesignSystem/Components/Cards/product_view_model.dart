import 'package:flutter/foundation.dart';

class ProductViewModel extends ChangeNotifier {
  final List<Map<String, String>> products = [
    {
      "imagePath": "assets/images/headphoneCard.png",
      "productName": "TMA-2 HD Wireless",
      "price": "USD 350",
      "rating": "4.6",
      "reviews": "86",
    },
    {
      "imagePath": "assets/images/cable.png",
      "productName": "TMA-2 Wireless",
      "price": "USD 200",
      "rating": "4.2",
      "reviews": "72",
    },
    {
      "imagePath": "assets/images/headphoneCard.png",
      "productName": "TMA-2 Studio",
      "price": "USD 250",
      "rating": "4.8",
      "reviews": "102",
    },
    {
      "imagePath": "assets/images/headphoneCard.png",
      "productName": "TMA-2 Studio",
      "price": "USD 250",
      "rating": "4.8",
      "reviews": "102",
    },
  ];
}
