import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Nice4 extends StatefulWidget {
  const Nice4({Key? key}) : super(key: key);

  @override
  _Nice4State createState() => _Nice4State();
}

class _Nice4State extends State<Nice4> {
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
          onWillPop: () => Provider.of<MyProvider>(context, listen: false)
              .onWillPop(context, 'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("الإبتسامة اللثوية"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.03),
                  provider.buildAutoSizeText("● المفهوم :", 18.00, Colors.green, FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s23, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/طب الاسنان التجميلي/13.png'),
                  ),
                  provider.buildAutoSizeText("● مميزات قص وتجميل اللثة :", 18.00, Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s24, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/12.png'),
                  provider.buildAutoSizeText("● عيوب و مخاطر قص اللثة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s25, 17.00),
                  provider.buildAutoSizeText("● تعليمات ما بعد قص اللثة :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s26, 17.00),
                  provider.buildAutoSizeText("• المحافظة على نظافة الفم حيث يفضل استخدام المحاليل الملحية لتنظيف الفم ٣ مرات يوميا كذلك تفريش الأسنان مرتين يوميا مع الحذر عند الاقتراب من مكان إجراء العملية.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('images/طب الاسنان التجميلي/15.png'),
                  ),
                  provider.buildAutoSizeText(Nice().s27, 17.00),
                  provider.buildAutoSizeText(Nice().s28, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/17.png'),
                  provider.buildAutoSizeText(Nice().s29, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/16.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
