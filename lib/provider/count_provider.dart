import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incCount() {
    _count++;
    notifyListeners();
  }
}
