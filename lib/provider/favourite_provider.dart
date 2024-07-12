import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<int> _seletedItem = [];
  List<int> get selectedItems => _seletedItem;

  void addItem(int value) {
    _seletedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _seletedItem.remove(value);
    notifyListeners();
  }
}
