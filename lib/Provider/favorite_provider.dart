import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {
  int _select = 24;
  int get select => _select;
  List<int> _selected_item = [];
  List<int> get selected_items => _selected_item;
  void addItem(int value) {
    _selected_item.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _selected_item.remove(value);
    notifyListeners();
  }

  void increment() {
    _select++;
    notifyListeners();
  }

  void decrement() {
    _select--;
    notifyListeners();
  }
}
