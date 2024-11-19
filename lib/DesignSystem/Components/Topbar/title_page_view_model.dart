import 'package:flutter/material.dart';

class TitlePageViewModel extends ChangeNotifier {
  bool _showCartBadge = false;

  bool get showCartBadge => _showCartBadge;

  void updateCartBadge(bool value) {
    _showCartBadge = value;
    notifyListeners();
  }
}
