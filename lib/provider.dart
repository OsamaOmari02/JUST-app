import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProvider with ChangeNotifier {
  Future<bool> onWillPop(BuildContext context, route) async {
    if (route == 'NextPage')
      await Navigator.of(context).pushReplacementNamed('MyHomePage');
    else if (route == 'page1')
      await Navigator.of(context).pushReplacementNamed('NextPage');
    throw "";
  }

//---------------------------Widgets -----------------------------

  String idx = "";

  Padding buildAutoSizeText(text, size, [color = Colors.black, weight]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AutoSizeText(
        text,
        minFontSize: 14,
        style: GoogleFonts.ibmPlexSansArabic(
          textStyle:
              TextStyle(fontSize: size, color: color, fontWeight: weight),
        ),
        overflow: TextOverflow.fade,
      ),
    );
  }

  int currentIndex = 0;
  int prevIndex = 0;
}
