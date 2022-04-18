import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Nice2 extends StatefulWidget {
  const Nice2({Key? key}) : super(key: key);

  @override
  _Nice2State createState() => _Nice2State();
}

class _Nice2State extends State<Nice2> {

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
          onWillPop: () => Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("مجوهرات الأسنان"),
            ),
            body: ListView(
              padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
              children: [
                SizedBox(height: getHeight() * 0.015),
                buildAutoSizeText(Nice().s11, 17.00),
                buildAutoSizeText("• المفهوم :", 18.00,Colors.green,FontWeight.bold),
                buildAutoSizeText(Nice().s12, 17.00),
                buildAutoSizeText("• المميزات :", 18.00,Colors.green,FontWeight.bold),
                buildAutoSizeText(Nice().s13, 17.00),
                Image.asset('images/طب الاسنان التجميلي/6.png'),
                buildAutoSizeText("• انواع مجوهرات الأسنان :", 18.00,Colors.green,FontWeight.bold),
                buildAutoSizeText("تتعدد أنواع المجوهرات فهناك  للفم، وأيضا  للانف ، وأخيراً  للأسنان أو اللسان.", 17.00),
                buildAutoSizeText("• اضرار مجوهرات الأسنان :", 18.00,Colors.red,FontWeight.bold),
                buildAutoSizeText(Nice().s14, 17.00),
                Container(child: Image.asset('images/طب الاسنان التجميلي/7.png'),padding: const EdgeInsets.all(8.0),height: getHeight()*0.32),
                buildAutoSizeText("• النصائح والإرشادات :", 18.00,Colors.green,FontWeight.bold),
                buildAutoSizeText(Nice().s15, 17.00),
              ],
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
