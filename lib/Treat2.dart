import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Treat2 extends StatefulWidget {
  const Treat2({Key? key}) : super(key: key);

  @override
  _Treat2State createState() => _Treat2State();
}

class _Treat2State extends State<Treat2> {

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
              title: const Text("الفلورايد"),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              children: [
                SizedBox(height: getHeight() * 0.03),
                provider.buildAutoSizeText("● المفهوم :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s11, 17.00),
                provider.buildAutoSizeText("● إعطاء الفلوريد :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("1. موضعيا :", 17.00,Colors.orange),
                provider.buildAutoSizeText(Treat().s12, 17.00),
                provider.buildAutoSizeText("2. نظاميا :", 18.00,Colors.orange),
                provider.buildAutoSizeText(Treat().s13, 17.00),
                provider.buildAutoSizeText("● أنواع الفلورايد :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("1- فلوريد الصوديوم :", 17.50,Colors.red),
                provider.buildAutoSizeText(Treat().s14, 17.00),
                provider.buildAutoSizeText("2- فلوريد ستانوس (SnF2) :", 17.50,Colors.red),
                provider.buildAutoSizeText(Treat().s15, 17.00),
                provider.buildAutoSizeText("3- فلوريد الفوسفات الحمضي (APF) :", 17.50,Colors.red),
                provider.buildAutoSizeText(Treat().s16, 17.00),
                provider.buildAutoSizeText("4- فارنيش الفلوريد( طلاء) :", 17.50,Colors.red),
                provider.buildAutoSizeText(Treat().s17, 17.00),
                provider.buildAutoSizeText("● كيف يكون الفلورايد فارنيش  مفيد للأطفال ؟", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s18, 17.00),
                provider.buildAutoSizeText(Treat().s19, 17.00),
                provider.buildAutoSizeText("● الاستطبابات والفوائد :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s20, 17.00),
                provider.buildAutoSizeText("لا ينصح بمضمضات الفلورايد في هذه الفئة العمرية على وجه الخصوص لأنهم قد لا يستطيعون تجنب بلعها .", 17.00,Colors.red),
                provider.buildAutoSizeText(Treat().s21, 17.00),
                provider.buildAutoSizeText("● الموانع وألاعراض الجانبية :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s22, 17.00),
                provider.buildAutoSizeText("- تشير الدراسات ان  الاستهلاك الزائد للفلوريد قد يؤثر على :", 18.00,Colors.orange,FontWeight.bold),
                provider.buildAutoSizeText("1. الدماغ :", 17.50,Colors.red,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s23, 17.00),
                provider.buildAutoSizeText("2. العظام :", 17.50,Colors.red,FontWeight.bold),
                provider.buildAutoSizeText("• ارتبطت المستويات السامة من الفلوريد بضعف العظام وزيادة في كسور الورك والمعصم.", 17.00),
                provider.buildAutoSizeText("3. الكلى :", 17.50,Colors.red,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s24, 17.00),
                provider.buildAutoSizeText("4. الأسنان :", 17.50,Colors.red,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s25, 17.00),
                provider.buildAutoSizeText("5. الغدة الدرقية :", 17.50,Colors.red,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s26, 17.00),
                provider.buildAutoSizeText("● الأدوات اللازمة لتطبيق مادة الفلورايد :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s27, 17.00),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
