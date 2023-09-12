import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  int _position = 0;

  int get position => _position;

  set position(int newIndex) {
    _position = newIndex;
    notifyListeners();
  }
}
