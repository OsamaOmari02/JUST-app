import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'info.dart';

class Treat3 extends StatefulWidget {
  const Treat3({Key? key}) : super(key: key);

  @override
  _Treat3State createState() => _Treat3State();
}

class _Treat3State extends State<Treat3> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;

  getHeight() => height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context, listen: false);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: () => Provider.of<MyProvider>(context, listen: false)
              .onWillPop(context, 'page1'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("الزيارة المنتظمة لطبيب الاسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                children: [
                  SizedBox(height: getHeight() * 0.01),
                  provider.buildAutoSizeText(
                      "* من المهم أن ترى طبيب أسنانك كل ستة أشهر وأن يقوم بفحصك وتنظيف اسنانك بشكل دوري.",
                      18.00),
                  provider.buildAutoSizeText(Treat().s34, 17.00),
                  provider.buildAutoSizeText(Treat().s35, 17.00),
                  provider.buildAutoSizeText(
                      "● أهمية الزيارة المنتظمة لطبيب الاسنان :",
                      17.50,
                      Colors.lightGreen,
                      FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s36, 17.00),
                  provider.buildAutoSizeText(
                      "● العلاقة بين الزيارة المنتظمة للطبيب والكشف المبكر عن السرطان :",
                      17.50,
                      Colors.orange,
                      FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s37, 17.00),
                  provider.buildAutoSizeText(
                      "● إيقاف جميع أشكال التدخين و الكحول :",
                      18.00,
                      Colors.lightGreen,
                      FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s38, 17.00),
                  provider.buildAutoSizeText(
                      "● يمكن تصنيف آثار التدخين وشرب الكحوليات على الفم والأسنان في ثلاث مجموعات هي :",
                      17.50,
                      Colors.red,
                      FontWeight.bold),
                  provider.buildAutoSizeText(
                      "1. الأسنان :", 17.20, Colors.black, FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s39, 17.00),
                  provider.buildAutoSizeText(
                      "2. اللثة :", 17.20, Colors.black, FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s40, 17.00),
                  provider.buildAutoSizeText(
                      "3. أنسجة الفم واللسان :",
                      17.20, Colors.black, FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s41, 17.00),
                  provider.buildAutoSizeText("● نصائح من أجل الإقلاع عن التدخين والكحول وهي كما يلي :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Treat().s42, 17.00),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
