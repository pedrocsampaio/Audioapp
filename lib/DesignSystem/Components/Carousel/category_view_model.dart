import 'package:flutter/material.dart';

class CategoryViewModel extends ChangeNotifier {
  final List<String> categories = ["Headphone", "Headband", "Earpads", "Cable"];
  final List<String> overviewCategories = ["Overview", "Features", "Specification"];
  
  int _selectedIndex = 0;
  int _overviewSelectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  int get overviewSelectedIndex => _overviewSelectedIndex;

  void selectCategory(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void selectOverviewCategory(int index) {
    _overviewSelectedIndex = index;
    notifyListeners();
  }
}
