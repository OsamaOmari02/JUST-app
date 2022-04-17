import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Mouth2 extends StatefulWidget {
  const Mouth2({Key? key}) : super(key: key);

  @override
  _Mouth2State createState() => _Mouth2State();
}

class _Mouth2State extends State<Mouth2> {
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
          onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("كسور ورضوض الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  buildAutoSizeText(mouth().s7, 18.00),
                  buildAutoSizeText('كسر السن : ', 19.00,Colors.red,FontWeight.bold),
                  buildAutoSizeText(mouth().s8, 18.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/3.png'),
                  ),
                  buildAutoSizeText(mouth().s9, 18.00),
                  buildAutoSizeText("أسباب الاصابه بصدمات الاسنان :", 19.00,Colors.red,FontWeight.bold),
                  buildAutoSizeText(mouth().s10, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/2.png'),
                  ),
                  buildAutoSizeText(mouth().s11, 18.00,Colors.red,FontWeight.bold),
                  buildAutoSizeText(mouth().s12, 18.00),
                  buildAutoSizeText("من المهم استشارة طبيب الأسنان في أسرع وقت ممكن لمنع أي أضرار ، ولكن في غضون ذلك ، يمكن اتباع إجراءات الرعاية الذاتية الآتية : ", 17.00,Colors.green),
                  buildAutoSizeText(mouth().s13, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/صحة الفم/5.png'),
                  ),
                  buildAutoSizeText("علاج كسور الاسنان الامامية :", 18.00,Colors.green,FontWeight.bold),
                  buildAutoSizeText("الحشوات : ", 18.00,Colors.red),
                  buildAutoSizeText(mouth().s14, 17.00),
                  buildAutoSizeText("التصرف الصحيح عند التعرض لكسر السن او سقوطه : ", 18.00,Colors.red),
                  buildAutoSizeText(mouth().s15, 17.00),
                  Image.asset('images/صحة الفم/4.png'),
                ],
              ),
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

