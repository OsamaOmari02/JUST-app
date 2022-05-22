import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {


  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد الخروج؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 21)),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text(
              "نعم",
              style: TextStyle(fontSize: 17, color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text(
              "إلغاء",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context,listen: false);
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: const MainAppBar(title: "من نحن"),
          body: ListView(
            padding: EdgeInsets.all(8.00),
            children: [],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentIndex,
            onTap: (index) {
              setState(() {
                provider.currentIndex = index;
              });
              if (index == 1 && provider.prevIndex != 1)
                Navigator.of(context).pushReplacementNamed('AboutUs');
              else if (index == 0 && provider.prevIndex != 0)
                Navigator.of(context).pushReplacementNamed('MyHomePage');
              setState(() {
                provider.prevIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              bottomNav(Icons.home, "الصفحة الرئيسية"),
              bottomNav(Icons.perm_identity, "من نحن"),
            ],
          ),
        ),
      ),
    ));
  }

  bottomNav(icon, title) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: title, backgroundColor: Colors.greenAccent);
  }
}
