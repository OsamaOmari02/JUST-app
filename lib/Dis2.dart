import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Dis2 extends StatefulWidget {
  const Dis2({Key? key}) : super(key: key);

  @override
  _Dis2State createState() => _Dis2State();
}

class _Dis2State extends State<Dis2> {
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
              title: const Text("الأنسجة الداعمة للأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText("تعرف دواعم السن بأنها الأنسجة التي تحيط بالأسنان وتدعمها، وتشمل : [7,5]", 17.00),
                  provider.buildAutoSizeText(Dis().s7, 17.00),
                  provider.buildAutoSizeText("● إلتهاب الأنسجة المحيطة/الداعمة : [5]", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s11, 17.00),
                  Image.asset('images/Dis/6.jpg'),
                  provider.buildAutoSizeText("● أسباب إلتهابات اللثة و الأنسجة المحيطة/الداعمة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("• البلاك / اللويحة الجرثومية : [5]", 18.00),
                  provider.buildAutoSizeText(Dis().s12, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/7.jpg'),
                  ),
                  provider.buildAutoSizeText("ومن أمثلة هذه البكتيريا :", 17.00),
                  provider.buildAutoSizeText(Dis().s13, 17.00),
                  provider.buildAutoSizeText("● تقسم العوامل التي تزيد من حدة الأصابة بإلتهابات الأنسجة المحيطة/الداعمة :", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("1- عوامل موضعية : [2]", 18.00),
                  provider.buildAutoSizeText(Dis().s14, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/8.png'),
                  ),
                  provider.buildAutoSizeText("- سوء الإطباق.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/9.png'),
                  ),
                  provider.buildAutoSizeText("- الحشوات الخاطئة.", 17.00),
                  Container(child: Image.asset('images/Dis/10.png'),height: getHeight()*0.3,),
                  provider.buildAutoSizeText("- التصبغات.", 17.00),
                  Container(child: Image.asset('images/Dis/11.jpg'),height: getHeight()*0.3,),
                  provider.buildAutoSizeText("- عدم الإهتمام بنظافة الفم.", 17.00),
                  provider.buildAutoSizeText("- جفاف الفم.", 17.00),
                  provider.buildAutoSizeText("- طريقة التفريش الخاطئة.", 17.00),
                  provider.buildAutoSizeText("2- عوامل عامة/جسدية :", 19.00),
                  provider.buildAutoSizeText("- التدخين :", 18.00),
                  provider.buildAutoSizeText(Dis().s15, 17.00),
                  Image.asset('images/Dis/12.png'),
                  provider.buildAutoSizeText("- السكري :", 18.00),
                  provider.buildAutoSizeText(Dis().s16, 17.00),
                  provider.buildAutoSizeText("- الحمل :", 18.00),
                  provider.buildAutoSizeText(Dis().s17, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/13.png'),
                  ),
                  provider.buildAutoSizeText('- العوامل النفسية والإجهاد :', 18.00),
                  provider.buildAutoSizeText(Dis().s18, 17.00),
                  provider.buildAutoSizeText("- الأمراض الجهازية. [5]", 18.00),
                  provider.buildAutoSizeText("- استخدام بعض الأدوية : [4]", 18.00),
                  provider.buildAutoSizeText("يمكن للأدوية المستخدمة لعلاج الأمراض الجسدية أن تزيد من حدة إلتهاب اللثة منها :", 17.00),
                  provider.buildAutoSizeText(Dis().s19, 17.00),
                  provider.buildAutoSizeText("● إلتهابات الأنسجة المحيطة/الداعمة للأسنان : [5]", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText("حيث يقسم إلى ثلاث مراحل حسب درجة تطور الإلتهاب :", 17.00),
                  provider.buildAutoSizeText("- المرحلة الأولى/المبكرة.\n- المرحلة الثانية/المتوسطة.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/19.png'),
                  ),
                  provider.buildAutoSizeText("- المرحلة الثالثة/المتقدمة.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Dis/20.png'),
                  ),
                  provider.buildAutoSizeText("● أعراض إلتهابات الأنسجة المحيطة/الداعمة : [5]", 18.00,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Dis().s26, 17.00),
                  Image.asset('images/Dis/21.png'),
                  provider.buildAutoSizeText("- تكون الجيوب اللثوية العميقة.", 17.00),
                  Image.asset('images/Dis/22.png'),
                  provider.buildAutoSizeText("- تكون الخراجات السنية والذي يؤدي إلى رائحة الفم الكريهة.", 17.00),
                  Image.asset('images/Dis/23.jpg'),
                  provider.buildAutoSizeText("- حساسية الأسنان.\n- حركة وتخلخل الأسنان ، ويمكن فقدانها.", 17.00),
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

