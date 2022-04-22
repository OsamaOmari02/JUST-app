import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Dis1 extends StatefulWidget {
  const Dis1({Key? key}) : super(key: key);

  @override
  _Dis1State createState() => _Dis1State();
}

class _Dis1State extends State<Dis1> {
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
              title: const Text("أجزاء السن"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText("● أجزاء السن :", 18.00,Colors.lightGreen,FontWeight.bold),
                  provider.buildAutoSizeText("• كل سن يتكون من :", 17.00),
                  provider.buildAutoSizeText(Dis().s1, 17.00),
                  provider.buildAutoSizeText(Dis().s2, 17.00),
                  Image.asset('images/Dis/1.png'),
                  provider.buildAutoSizeText(
                      "● يتكون السن من أربع طبقات ثلاث منها صلبة وواحدة غير صلبة :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText("• أولا :\nثلاث طبقات صلبة :", 17.00),
                  provider.buildAutoSizeText(Dis().s5, 17.00),
                  // provider.buildAutoSizeText("عوامل خطر الإصابة :", 18.00,Colors.red,FontWeight.bold),
                  // provider.buildAutoSizeText(Dis().s6, 17.00),
                  // provider.buildAutoSizeText("3- ضعف جهاز المناعة .", 17.00),
                  // provider.buildAutoSizeText("4- تعرض الشفاه الى أشعة الشمس لفترة طويلة .", 17.00),
                  SizedBox(height: getHeight() * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

