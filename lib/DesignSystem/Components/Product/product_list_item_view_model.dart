import 'package:flutter/material.dart';

class ProductListItemViewModel {
  final String imageUrl;
  final String productName;
  final double price;
  final double rating;
  final int reviewCount;

  ProductListItemViewModel({
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.rating,
    required this.reviewCount,
  });

  // Lista de produtos simulada
  static List<ProductListItemViewModel> get sampleProducts => [
        ProductListItemViewModel(
          imageUrl: 'assets/images/headphone.png',
          productName: 'TMA-2 Comfort Wireless',
          price: 270.0,
          rating: 4.6,
          reviewCount: 86,
        ),
        ProductListItemViewModel(
          imageUrl: 'assets/images/headphone.png',
          productName: 'TMA-2 DJ',
          price: 270.0,
          rating: 4.6,
          reviewCount: 86,
        ),
        ProductListItemViewModel(
          imageUrl: 'assets/images/headphone.png',
          productName: 'TMA-2 Move Wireless',
          price: 270.0,
          rating: 4.6,
          reviewCount: 86,
        ),
      ];
}
