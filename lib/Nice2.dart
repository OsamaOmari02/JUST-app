import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    var provider = Provider.of<MyProvider>(context,listen: false);
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
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(Nice().s11, 17.00),
                  provider.buildAutoSizeText("● المفهوم :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s12, 17.00),
                  provider.buildAutoSizeText("● المميزات :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s13, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/6.png'),
                  provider.buildAutoSizeText("● انواع مجوهرات الأسنان :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText("تتعدد أنواع المجوهرات فهناك  للفم، وأيضا للأنف ، وأخيراً  للأسنان أو اللسان. [6]", 17.00),
                  provider.buildAutoSizeText("● اضرار مجوهرات الأسنان : [6]", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s14, 17.00),
                  Container(child: Image.asset('images/طب الاسنان التجميلي/7.png'),padding: const EdgeInsets.all(8.0),height: getHeight()*0.32),
                  provider.buildAutoSizeText("● النصائح والإرشادات : [2]", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s15, 17.00),
                  SizedBox(height: getHeight() * 0.015),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
