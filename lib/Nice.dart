import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

class Nice extends StatefulWidget {
  const Nice({Key? key}) : super(key: key);

  @override
  _NiceState createState() => _NiceState();
}

class _NiceState extends State<Nice> {
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
              title: const Text("طب الأسنان التجميلي"),
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
