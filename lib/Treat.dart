import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

class Treat extends StatefulWidget {
  const Treat({Key? key}) : super(key: key);

  @override
  _TreatState createState() => _TreatState();
}

class _TreatState extends State<Treat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: () => Provider.of<MyProvider>(context, listen: false)
              .onWillPop(context),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("العلاج الوقائي"),
            ),
            body: ListView(
              padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
