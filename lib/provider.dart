import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider with ChangeNotifier {
  Future<bool> onWillPop(BuildContext context, route) async {
    if (route == 'NextPage')
      await Navigator.of(context).pushReplacementNamed('MyHomePage');
    else if (route == 'page1')
      await Navigator.of(context).pushReplacementNamed('NextPage');
    throw "";
  }

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
//---------------------------dark mode -----------------------------

  String idx="";
}
