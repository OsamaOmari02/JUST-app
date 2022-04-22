import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Nice1 extends StatefulWidget {
  const Nice1({Key? key}) : super(key: key);

  @override
  _Nice1State createState() => _Nice1State();
}

class _Nice1State extends State<Nice1> {

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
          onWillPop: () => Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("التبييض"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText("● تبييض الأسنان :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s2, 17.00),
                  provider.buildAutoSizeText("●  انواع التبييض:", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s3, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/1.png'),
                  provider.buildAutoSizeText(Nice().s4, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/2.png'),
                  provider.buildAutoSizeText(Nice().s5, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/3.png'),
                  provider.buildAutoSizeText("● العوامل التي تؤثر في بياض الأسنان :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s6, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset('images/طب الاسنان التجميلي/4.png'),
                  ),
                  provider.buildAutoSizeText("● الاعراض الجانبية بعد تبييض الاسنان: ", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s7, 17.00),
                  provider.buildAutoSizeText("● اضرار تبييض الاسنان :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s8, 17.00),
                  provider.buildAutoSizeText(Nice().s9, 18.00,Colors.deepOrange),
                  provider.buildAutoSizeText(Nice().s10, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/5.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
