import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Mouth1 extends StatefulWidget {
  const Mouth1({Key? key}) : super(key: key);

  @override
  _Mouth1State createState() => _Mouth1State();
}

class _Mouth1State extends State<Mouth1> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;

  getHeight() => height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("سرطان الفم"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  buildAutoSizeText(mouth().s1, 18.00),
                  buildAutoSizeText(mouth().s2, 17.00),
                  buildAutoSizeText(mouth().s3, 18.00),
                  buildAutoSizeText(
                      "الأعراض :", 18.00, Colors.red, FontWeight.bold),
                  buildAutoSizeText(mouth().s4, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/1.png'),
                  ),
                  buildAutoSizeText("عوامل خطر الإصابة :", 18.00,Colors.red,FontWeight.bold),
                  buildAutoSizeText(mouth().s5, 17.00),
                  buildAutoSizeText(mouth().s6, 17.00),
                  buildAutoSizeText("3- ضعف جهاز المناعة .", 17.00),
                  buildAutoSizeText("4- تعرض الشفاه الى أشعة الشمس لفترة طويلة .", 17.00),
                  SizedBox(height: getHeight() * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildAutoSizeText(text, size, [color = Colors.black, weight]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AutoSizeText(
        text,
        style: GoogleFonts.ibmPlexSansArabic(
          textStyle: TextStyle(fontSize: size, color: color, fontWeight: weight),
        ),
        overflow: TextOverflow.fade,
      ),
    );
  }
}

