import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Teeth2 extends StatefulWidget {
  const Teeth2({Key? key}) : super(key: key);

  @override
  _Teeth2State createState() => _Teeth2State();
}

class _Teeth2State extends State<Teeth2> {
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
              title: const Text("الأعراض والمضاعفات"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText("● الأعراض والعلامات : [7]", 18.50,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s25, 17.00),
                  provider.buildAutoSizeText("- ألم في الأسنان.", 17.00),
                  provider.buildAutoSizeText(Teeth().s26, 17.00),
                  provider.buildAutoSizeText(Teeth().s27, 17.00),
                  provider.buildAutoSizeText(Teeth().s28, 17.00),
                  provider.buildAutoSizeText(Teeth().s29, 17.00),
                  provider.buildAutoSizeText(Teeth().s30, 17.00,Colors.black,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s31, 17.00),
                  provider.buildAutoSizeText(Teeth().s32, 17.00),
                  provider.buildAutoSizeText("● المضاعفات : [2]", 18.50,Colors.red,FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s33, 17.00),
                  provider.buildAutoSizeText("- التهاب دواعم السن.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/12.jpg'),
                  ),
                  provider.buildAutoSizeText("- تورم حول السن.", 17.00),
                  provider.buildAutoSizeText("- خراج الاسنان.", 17.00),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/Teeth/14.jpg'),
                  ),
                  provider.buildAutoSizeText("- مشاكل في المضغ.", 17.00),
                  provider.buildAutoSizeText("- كسر الاسنان.", 17.00),
                  Image.asset('images/Teeth/13.jpg'),
                  provider.buildAutoSizeText("- فقدان الأسنان.", 17.00),
                  provider.buildAutoSizeText("● التشخيص والكشف عن التسوس :", 18.50, Colors.green, FontWeight.bold),
                  provider.buildAutoSizeText(Teeth().s34, 17.00),
                  Image.asset('images/Teeth/15.jpg'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

