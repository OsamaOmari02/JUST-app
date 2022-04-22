import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit1 extends StatefulWidget {
  const Habit1({Key? key}) : super(key: key);

  @override
  _Habit1State createState() => _Habit1State();
}

class _Habit1State extends State<Habit1> {
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
              title: const Text("استخدام الأسنان كأداة"),
            ),
            body: Scrollbar(
              child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  children: [
                    SizedBox(height: getHeight() * 0.015),
                    provider.buildAutoSizeText(
                        "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                    provider.buildAutoSizeText(Habit().s2, 17.00),
                    provider.buildAutoSizeText("● اثر استخدام الاسنان كاداة :", 18.00,
                        Colors.lightGreen, FontWeight.bold),
                    provider.buildAutoSizeText(Habit().s3, 17.00),
                    provider.buildAutoSizeText(Habit().s4, 17.00),
                    provider.buildAutoSizeText(Habit().s5, 17.00),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('images/Habit/2.png'),
                    ),
                    provider.buildAutoSizeText("● العلاج :", 18.00, Colors.lightGreen, FontWeight.bold),
                    provider.buildAutoSizeText("يجب ترك هذه العادة لما لها من اثر سلبي على الاسنان.", 17.00),
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

