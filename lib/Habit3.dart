import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit3 extends StatefulWidget {
  const Habit3({Key? key}) : super(key: key);

  @override
  _Habit3State createState() => _Habit3State();
}

class _Habit3State extends State<Habit3> {
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
              title: const Text("صرير الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s9, 17.00),
                  provider.buildAutoSizeText(Habit().s10, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/Habit/4.png'),
                  ),
                  provider.buildAutoSizeText("● علاج صرير الاسنان يتمثل بعلاجات سلوكية مثل :", 18.00,
                      Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s11, 17.00),
                  provider.buildAutoSizeText("اما طرق الوقاية الاكثر شيوعًا هو استخدام بما يسمى الحارس الليلي (Night guard).", 17.00, Colors.black, FontWeight.bold),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Habit/5.png'),
                  ),
                  provider.buildAutoSizeText("● يمكن تقسيم أنشطة جهاز المضغ إلى نوعين :", 18.00,
                      Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText("1. وظيفي ، ويشمل المضغ ، والتحدث.\n2. الوظيفة شبه الوظيفية ، والتي تشمل صرير الأسنان أو طحنها (يُعرف النشاط شبه الوظيفي أيضًا باسم فرط نشاط العضلات).", 17.00),
                  provider.buildAutoSizeText(Habit().s12, 17.00),
                  provider.buildAutoSizeText(Habit().s13, 17.00),
                  provider.buildAutoSizeText("● أسباب صرير الأسنان ليست واضحة تمامًا", 18.00,
                      Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s14, 17.00),
                  provider.buildAutoSizeText("* لا يوجد علاج واحد فعال للقضاء على صرير الأسنان أو حتى تقليله. [4]", 18.00,
                      Colors.red, FontWeight.bold),
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

