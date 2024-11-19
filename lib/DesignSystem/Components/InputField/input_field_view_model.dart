import 'package:flutter/material.dart';

class StyledInputFieldViewModel extends ChangeNotifier {
  String _text = "";
  bool _isEnabled = true;

  String get text => _text;
  bool get isEnabled => _isEnabled;

  // Atualizar o texto do campo
  void updateText(String newText) {
    _text = newText;
    notifyListeners();
  }

  // Ativar ou desativar o campo
  void toggleEnabled() {
    _isEnabled = !_isEnabled;
    notifyListeners();
  }

  // Limpar o texto
  void clearText() {
    _text = "";
    notifyListeners();
  }
}
