import 'package:flutter/cupertino.dart';

class ChangeScreen extends ChangeNotifier {
  int currentIndex = 0;
  change(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
