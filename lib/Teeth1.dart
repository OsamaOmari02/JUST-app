import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Teeth1 extends StatefulWidget {
  const Teeth1({Key? key}) : super(key: key);

  @override
  _Teeth1State createState() => _Teeth1State();
}

class _Teeth1State extends State<Teeth1> {
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
              title: const Text("أنواع ومراحل تسوس الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(Teeth().s2, 17.00),
                  provider.buildAutoSizeText("● تسوس الأسنان :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s3, 17.00),
                  provider.buildAutoSizeText("*اسم البكتيريا المسبب للتسوس (streptococcus mutans).", 17.00,Colors.brown),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/2.jpg'),
                  ),
                  provider.buildAutoSizeText("● أنواع تسوس الأسنان : [7]", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("- التسوس الأولي : يحدث في مكان لم يشهد تسوسًا سابقًا.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/4.png'),
                  ),
                  provider.buildAutoSizeText(Teeth().s4, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/5.png'),
                  ),
                  provider.buildAutoSizeText(Teeth().s5, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/6.jpg'),
                  ),
                  provider.buildAutoSizeText(Teeth().s6, 17.00),
                  provider.buildAutoSizeText("● مراحل تسوس الأسنان :", 18.00, Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s7, 17.00),
                  provider.buildAutoSizeText(Teeth().s8, 17.00),
                  provider.buildAutoSizeText(Teeth().s9, 17.00),
                  provider.buildAutoSizeText(Teeth().s10, 17.00),
                  provider.buildAutoSizeText(Teeth().s11, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/Teeth/7.jpg'),
                  ),
                  provider.buildAutoSizeText("● يصنف تسوس الأسنان :", 18.50,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("● حسب مكان سطح السن : [8]", 17.00,Colors.black,FontWeight.bold),
                  provider.buildAutoSizeText("- موقع السن : يعد تسوس الأسنان الخلفية أكثر أنواع تسوس الأسنان شيوعًا (الأضراس والضواحك).", 17.00),
                  provider.buildAutoSizeText(Teeth().s12, 17.00),
                  Image.asset('images/Teeth/8.jpg'),
                  provider.buildAutoSizeText(Teeth().s13, 17.00),
                  Image.asset('images/Teeth/9.jpg'),
                  provider.buildAutoSizeText(Teeth().s14, 17.00),
                  Image.asset('images/Teeth/10.jpg'),
                  provider.buildAutoSizeText(Teeth().s15, 17.00),
                  provider.buildAutoSizeText(Teeth().s16, 17.00),
                  Image.asset('images/Teeth/18.png'),
                  provider.buildAutoSizeText("● حسب الأنسجة الصلبة المتضررة : [7]", 17.00,Colors.black,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s17, 17.00),
                  Image.asset('images/Teeth/19.jpg'),
                  provider.buildAutoSizeText("● حسب معدل التقدم : [7]", 17.00,Colors.black,FontWeight.bold),
                  provider.buildAutoSizeText("- حاد: يشير إلى حالة سريعة التطور.", 17.00),
                  provider.buildAutoSizeText("- مزمن: يشير إلى فترة طويلة من تطور الحالة.", 17.00),
                  Image.asset('images/Teeth/20.jpg'),
                  provider.buildAutoSizeText("● مسببات تسوس الأسنان :  [2]", 18.50,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s18, 17.00),
                  provider.buildAutoSizeText(Teeth().s19, 17.00),
                  provider.buildAutoSizeText(Teeth().s20, 17.00),
                  provider.buildAutoSizeText(Teeth().s21, 17.00),
                  provider.buildAutoSizeText(Teeth().s22, 17.00),
                  provider.buildAutoSizeText(Teeth().s23, 17.00),
                  provider.buildAutoSizeText(Teeth().s24, 17.00),
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

