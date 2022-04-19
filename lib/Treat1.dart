import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Treat1 extends StatefulWidget {
  const Treat1({Key? key}) : super(key: key);

  @override
  _Treat1State createState() => _Treat1State();
}

class _Treat1State extends State<Treat1> {

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
              title: const Text("المادة السادة الوقائية"),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              children: [
                SizedBox(height: getHeight() * 0.03),
                provider.buildAutoSizeText("• المفهوم :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s2, 17.00),
                provider.buildAutoSizeText("• من الذي يمكنهم الحصول علي الماده السادة الوقائية ؟", 17.50,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s3, 17.00),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/العلاج الوقائي/1.jpg'),
                ),
                provider.buildAutoSizeText("• كيف تحمي المواد السادة الوقائية الاسنان ؟", 17.50,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s4, 17.00),
                provider.buildAutoSizeText("• كيفية الاعتناء بالاسنان بعد الحصول علي المادة السادة الوقائية ؟", 17.50,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s5, 17.00),
                provider.buildAutoSizeText("• فعالية المادة السادة الوقائية :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s6, 17.00),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('images/العلاج الوقائي/2.jpg'),
                ),
                provider.buildAutoSizeText("• طول عمر المادة السادة الوقائية :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText(Treat().s7, 17.00),
                provider.buildAutoSizeText("• استخداماتها وموانع الاستخدام :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("* أحد دواعي استخدامها للمرضى أو للأسنان الأكثر عرضةً للتسوس. وهؤلاء المرضى هم الذين لديهم :", 17.00),
                provider.buildAutoSizeText(Treat().s8, 17.00),
                provider.buildAutoSizeText("* موانع استخدامه هو للمرضى أو الأسنان الأقل عرضةً للتسوس. وهو يتضمن المرضى الذين لديهم :", 17.50),
                provider.buildAutoSizeText(Treat().s9, 17.00),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('images/العلاج الوقائي/3.png'),
                ),
                provider.buildAutoSizeText("طريقة تطبيقه :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("الطريقة المستخدمة تعتمد على المادة المستخدمة.", 17.00),
                provider.buildAutoSizeText(Treat().s10, 17.00),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('images/العلاج الوقائي/8.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
