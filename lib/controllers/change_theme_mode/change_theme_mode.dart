import 'package:flutter/cupertino.dart';

class ChangeThemeMode extends ChangeNotifier {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
