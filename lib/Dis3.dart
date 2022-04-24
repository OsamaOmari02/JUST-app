import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Dis3 extends StatefulWidget {
  const Dis3({Key? key}) : super(key: key);

  @override
  _Dis3State createState() => _Dis3State();
}

class _Dis3State extends State<Dis3> {
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
              title: const Text("أمراض اللثة"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s20, 17.00),
                  provider.buildAutoSizeText("● اللثة السليمة: تشمل مواصفات اللثة السليمة:", 18.00,Colors.lightGreen,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s21, 17.50),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/4.png'),
                  ),
                  provider.buildAutoSizeText("● إلتهاب اللثة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s22, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/5.png'),
                  ),
                  provider.buildAutoSizeText("● علامات وأعراض إلتهاب اللثة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("1- لثة متورمة أو منتفخة.\n2- احمرار اللثة الداكن.\n3- حواف اللثة مستديرة ولامعة.", 17.50),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/14.png'),
                  ),
                  provider.buildAutoSizeText("4- نزيف اللثة خاصة عند تفريش الأسنان أو استخدام الخيط السني.", 17.50),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/15.png'),
                  ),
                  provider.buildAutoSizeText("5- نفس برائحة كريهة.", 17.50),
                  provider.buildAutoSizeText("● أنواع التهاب اللثة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("1- التهاب اللثة الناتج عن تراكم البلاك :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s23, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/16.png'),
                  ),
                  provider.buildAutoSizeText("2- التهاب اللثة التقرحي الناخر :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s24, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/17.jpg'),
                  ),
                  provider.buildAutoSizeText("3- التهاب اللثة كعرض للأمراض الجهازية :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s25, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/18.png'),
                  ),
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

