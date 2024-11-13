import 'package:flutter/material.dart';

class TextViewModel extends ChangeNotifier {
  String _displayText = "Hello, Flutter with MVVM!";

  String get displayText => _displayText;

  void updateText(String newText) {
    _displayText = newText;
    notifyListeners();
  }
}
