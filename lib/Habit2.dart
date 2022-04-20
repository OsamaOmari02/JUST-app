import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit2 extends StatefulWidget {
  const Habit2({Key? key}) : super(key: key);

  @override
  _Habit2State createState() => _Habit2State();
}

class _Habit2State extends State<Habit2> {
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
              title: const Text("قضم الأظافر"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s6, 17.00),
                  provider.buildAutoSizeText("● الأعراض الناتجة :", 18.00,
                      Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s7, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/Habit/3.png'),
                  ),
                  provider.buildAutoSizeText("● العلاج :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s8, 17.00),
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

