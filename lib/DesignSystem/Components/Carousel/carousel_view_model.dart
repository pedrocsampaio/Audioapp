import 'package:flutter/material.dart';

class CarouselBannerViewModel {
  final String title; // Título do banner
  final String subtitle; // Subtítulo do banner
  final String imagePath; // Caminho da imagem
  final VoidCallback? onPressed; // Função ao clicar

  CarouselBannerViewModel({
    required this.title,
    this.subtitle = "",
    required this.imagePath,
    this.onPressed,
  });
}

// Exemplo de lista de banners para um carrossel
final List<CarouselBannerViewModel> bannerList = [
  CarouselBannerViewModel(
    title: "TMA-2 Modular Headphone",
    subtitle: "",
    imagePath: "assets/images/headphone.png",
    onPressed: () {
      print("Shop now clicked for TMA-2 Modular Headphone!");
    },
  ),
  CarouselBannerViewModel(
    title: "Another Product",
    subtitle: "Subtitle for product",
    imagePath: "assets/images/product.png",
    onPressed: () {
      print("Shop now clicked for Another Product!");
    },
  ),
];
