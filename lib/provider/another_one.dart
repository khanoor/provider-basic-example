import 'package:flutter/material.dart';

class AnotherOneProvider extends ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  void changeValue(double val) {
    _value = val;
    notifyListeners();
  }
}
