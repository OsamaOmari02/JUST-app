import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'info.dart';

class Mouth4 extends StatefulWidget {
  const Mouth4({Key? key}) : super(key: key);

  @override
  _Mouth4State createState() => _Mouth4State();
}

class _Mouth4State extends State<Mouth4> {
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
              title: const Text("خيط الأسنان"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText("● المفهوم :",
                      18.00, Colors.green, FontWeight.bold),
                  provider.buildAutoSizeText(mouth().s22, 18.00),
                  provider.buildAutoSizeText("● انواع خيط الأسنان :", 18.00,
                      Colors.green, FontWeight.bold),
                  provider.buildAutoSizeText(
                      "المشع وغير المشع، ذو خيط احادي و متعدد الخيوط.", 17.00),
                  Image.asset('images/صحة الفم/11.png'),
                  provider.buildAutoSizeText("● فوائد استخدام خيط الأسنان :",
                      18.00, Colors.green, FontWeight.bold),
                  Row(
                    children: [
                      provider.buildAutoSizeText(mouth().s23, 17.00),
                      Expanded(
                          child: Container(
                        child: Image.asset('images/صحة الفم/10.png'),
                        height: getHeight() * 0.2,
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      provider.buildAutoSizeText("كيفية استخدام خيط الأسنان :",
                          18.00, Colors.green, FontWeight.bold),
                      Expanded(child: SizedBox(width: 1)),
                      TextButton(
                          child: Text("فيديو",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          onPressed: () async {
                            try {
                              await launch(
                                  'https://www.youtube.com/watch?v=PQGiiRhPXXs');
                            } catch (e) {
                              print(e);
                            }
                          }),
                    ],
                  ),
                  provider.buildAutoSizeText(mouth().s24, 17.00),
                  provider.buildAutoSizeText("● أضرار خيط الأسنان :", 18.00,
                      Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(mouth().s25, 17.00),
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
