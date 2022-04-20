import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit6 extends StatefulWidget {
  const Habit6({Key? key}) : super(key: key);

  @override
  _Habit6State createState() => _Habit6State();
}

class _Habit6State extends State<Habit6> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;

  getHeight() => height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context,listen: false);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("الوجبات الخفيفة"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText("تعتمد صحة الفم بشكل عام على نوعية الغذاء الذي نأكله وعدد الوجبات والمدة التي تفصل بين هذه الوجبات.", 17.00),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s26, 17.00),
                  provider.buildAutoSizeText(Habit().s27, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset('images/Habit/9.png'),
                  ),
                  provider.buildAutoSizeText("● بدائل الوجبات الخفيفه :", 18.00,
                      Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s28, 17.00),
                  provider.buildAutoSizeText("● العنايه بالفم والاسنان :", 18.00,
                      Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s29, 17.00),
                  SizedBox(height: getHeight() * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

