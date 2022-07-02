import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit4 extends StatefulWidget {
  const Habit4({Key? key}) : super(key: key);

  @override
  _Habit4State createState() => _Habit4State();
}

class _Habit4State extends State<Habit4> {
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
              title: const Text("أخطاء تنظيف الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "هل تقوم بتنظيف أسنانك بالفرشاة بشدة ؟", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s15, 17.00),
                  provider.buildAutoSizeText("● من الأخطاء الشائعة عند تنظيف الاسنان :", 18.00 , Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s16, 17.00),
                  provider.buildAutoSizeText("● خطوات تنظيف الأسنان هي كما الآتي :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s17, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Habit/7.png'),
                  ),
                  provider.buildAutoSizeText("● الطريقة الصحيحة لتنظيف أسنانك بالفرشاة :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText("اتبع هذه النصائح لتنظيف أسنانك بالفرشاة بشكل صحيح للمساعدة في تخفيف حساسية الأسنان ومنع تلف الأسنان واللثة :", 17.00,
                      Colors.black, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s18, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Habit/6.png'),
                  ),
                  provider.buildAutoSizeText("يمكن أن يساعدك الالتزام بهذه النصائح في الحفاظ على أسنانك نظيفة وصحة فمك ، مع التخلص من أعراض حساسية الأسنان. [5]", 17.00,Colors.black,FontWeight.bold),
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

