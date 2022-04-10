import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider with ChangeNotifier {
  bool isDark = false;

  getDarkMode() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isDark = pref.getBool('darkMode') ?? false;
    notifyListeners();
  }

  setDarkMode(value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('darkMode', value);
    isDark = value;
    notifyListeners();
  }

  Future<bool> onWillPop(ctx) async {
    await Navigator.of(ctx).pushReplacementNamed('MyHomepage');
    throw "";
  }

}