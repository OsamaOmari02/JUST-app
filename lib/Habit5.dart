import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class Habit5 extends StatefulWidget {
  const Habit5({Key? key}) : super(key: key);

  @override
  _Habit5State createState() => _Habit5State();
}

class _Habit5State extends State<Habit5> {
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
              title: const Text("قضم قطع الثلج"),
            ),
            body: Scrollbar(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                children: [
                  SizedBox(height: getHeight() * 0.015),
                  provider.buildAutoSizeText(
                      "● المفهوم :", 18.00, Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s19, 17.00),
                  provider.buildAutoSizeText("● أضرار الثلج على الصحة نذكر لك في ما يأتي بعض أضرار الثلج المرافقة لاستخدامه بكثرة أو بطريقة خاطئة :", 17.30,
                      Colors.red, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s20, 17.00),
                  provider.buildAutoSizeText(Habit().s21, 17.00),
                  provider.buildAutoSizeText("- حدوث سوء التغذية.", 17.00),
                  provider.buildAutoSizeText(Habit().s22, 17.00),
                  provider.buildAutoSizeText(Habit().s23, 17.00),
                  provider.buildAutoSizeText(Habit().s24, 17.00),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/Habit/8.png'),
                  ),
                  provider.buildAutoSizeText("● العلاج :", 18.00,
                      Colors.lightGreen, FontWeight.bold),
                  provider.buildAutoSizeText(Habit().s25, 17.00),
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

