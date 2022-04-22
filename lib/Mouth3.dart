import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Mouth3 extends StatefulWidget {
  const Mouth3({Key? key}) : super(key: key);

  @override
  _Mouth3State createState() => _Mouth3State();
}

class _Mouth3State extends State<Mouth3> {
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
              title: const Text("تفريش الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.01),
                  provider.buildAutoSizeText("● اختيار فرشاة الأسنان المناسبة :", 18.00,Colors.green,FontWeight.bold),
                  provider.buildAutoSizeText(mouth().s16, 17.00),
                  provider.buildAutoSizeText("نأتي الآن إلى الجزء الأهم وهوا كيف نفرش أسناننا.", 18.00,Colors.green,FontWeight.bold),
                  Center(child: provider.buildAutoSizeText("Modified Bass Brushing Technique", 18.00,Colors.red,FontWeight.bold)),
                  provider.buildAutoSizeText(mouth().s17,17.00,Colors.orange,FontWeight.w600),
                  provider.buildAutoSizeText(mouth().s18, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/7.png'),
                  ),
                  Center(child: provider.buildAutoSizeText("Charter's brushing method", 18.00,Colors.red,FontWeight.bold)),
                  provider.buildAutoSizeText("يمكن استخدام هذه الطريقة للأشخاص الذين يضعون تقويم الأسنان ",17.00,Colors.orange,FontWeight.w600),
                  provider.buildAutoSizeText(mouth().s19, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/8.png'),
                  ),
                  Center(child: provider.buildAutoSizeText("Stillman Brushing Technique", 18.00,Colors.red,FontWeight.bold)),
                  provider.buildAutoSizeText("تستخدم هذه الطريقة للأشخاص الذين يعانون من انحسار اللثة.",17.00,Colors.orange,FontWeight.w600),
                  provider.buildAutoSizeText(mouth().s20, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/9.png'),
                  ),
                  Center(child: provider.buildAutoSizeText("Fones Technique", 18.00,Colors.red,FontWeight.bold)),
                  provider.buildAutoSizeText("عادة ما يوصى بهذه الطريقة للأطفال الصغار ذوي البراعة اليدوية الأقل.",17.00,Colors.orange,FontWeight.w600),
                  provider.buildAutoSizeText(mouth().s21, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/صحة الفم.png'),
                  ),
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

