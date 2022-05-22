import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Nice3 extends StatefulWidget {
  const Nice3({Key? key}) : super(key: key);

  @override
  _Nice3State createState() => _Nice3State();
}

class _Nice3State extends State<Nice3> {
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
              title: const Text("القشور الخزفية والزيريكون"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(Nice().s16, 17.00),
                  provider.buildAutoSizeText("● المفهوم :", 18.00, Colors.green, FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s17, 17.00),
                  provider.buildAutoSizeText(Nice().s18, 17.00),
                  Row(
                    children: [
                      provider.buildAutoSizeText("● الفرق بينهما :", 18.00, Colors.green,
                          FontWeight.bold),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                            child: Container(
                                child:
                                    Image.asset('images/طب الاسنان التجميلي/8.png'),
                                height: getHeight() * 0.3)),
                      ),
                    ],
                  ),
                  provider.buildAutoSizeText(Nice().s19, 17.00),
                  provider.buildAutoSizeText("● عيوب كل منهما :", 18.00, Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s20, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/9.png'),
                  provider.buildAutoSizeText("● القشور الخزفية ورائحة الفم :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s21, 17.00),
                  Container(child: Image.asset('images/طب الاسنان التجميلي/10.png'),height: getHeight()*0.3),
                  provider.buildAutoSizeText("● العناية بهما :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(Nice().s22, 17.00),
                  Image.asset('images/طب الاسنان التجميلي/11.png'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
