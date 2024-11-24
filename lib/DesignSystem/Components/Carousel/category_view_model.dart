import 'package:flutter/material.dart';

class CategoryViewModel extends ChangeNotifier {
  final List<String> categories = ["Headphone", "Headband", "Earpads", "Cable"];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectCategory(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
