import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'info.dart';

class Dis4 extends StatefulWidget {
  const Dis4({Key? key}) : super(key: key);

  @override
  _Dis4State createState() => _Dis4State();
}

class _Dis4State extends State<Dis4> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;
  getHeight() => height = MediaQuery.of(context).size.height;

  late YoutubePlayerController controller;
  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=iqfWsCsp-pU')!,
        flags: YoutubePlayerFlags(autoPlay: false,controlsVisibleAtStart: true));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context,listen: false);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: YoutubePlayerBuilder(
        player: YoutubePlayer(
        bottomActions: [
        FullScreenButton(),
        RemainingDuration(),
        ProgressBar(isExpanded: true),
        CurrentPosition(),
        ],
        showVideoProgressIndicator: true,
        controller: controller,
        ),
        builder: (context, player) => Directionality(
          textDirection: TextDirection.rtl,
          child: WillPopScope(
        onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'page1'),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("طرق الوقاية والعلاج"),
          ),
          body: Scrollbar(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              children: [
                SizedBox(height: getHeight() * 0.015),
                provider.buildAutoSizeText(
                    "● طرق الوقاية والعلاج من التهاب اللثة :", 18.00, Colors.lightGreen, FontWeight.bold),
                provider.buildAutoSizeText(Dis().s27, 17.00),
                Image.asset('images/Dis/24.png'),
                provider.buildAutoSizeText(Dis().s28, 17.00),
                Image.asset('images/Dis/25.png'),
                provider.buildAutoSizeText(Dis().s29, 17.00),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/Dis/26.png'),
                ),
                provider.buildAutoSizeText("* من أنواع الغسول :", 18.00,Colors.blue),
                provider.buildAutoSizeText("الغسول اليومي: لمكافحة التسوس والحفاظ على رائحة الفم.\nالغسول العلاجي: لعلاج الالتهابات اللثوية.", 17.50),
                provider.buildAutoSizeText(Dis().s30, 17.00),
                provider.buildAutoSizeText(Dis().s31, 17.00),
                provider.buildAutoSizeText("● كيفية تقييم وضع اللثة :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("1- الفحص السريري يتضمن تقدير ما يلي :", 17.00,Colors.black,FontWeight.bold),
                provider.buildAutoSizeText(Dis().s32, 17.00),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/Dis/27.png'),
                ),
                provider.buildAutoSizeText(Dis().s33, 17.00),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/Dis/28.png'),
                ),
                provider.buildAutoSizeText("- نزيف عند قياس عمق الجيب اللثوي بإستخدام أداة خاصة.", 17.00),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/Dis/29.png'),
                ),
                provider.buildAutoSizeText("- تحديد أماكن تواجد ومقدار تراجع/انحسار اللثة.", 17.00),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/Dis/30.png'),
                ),
                provider.buildAutoSizeText("2- الفحص بواسطة صور الأشعة :", 17.00,Colors.black,FontWeight.bold),
                provider.buildAutoSizeText("لمعرفة مقدار تآكل وذوبان عظم الفك بسبب الإلتهاب إما بواسطة صور الأشعة الجانبية، البانورامية، أو البسيطة.", 17.00),
                provider.buildAutoSizeText("● العلاج / الإدارة :", 18.00,Colors.lightGreen,FontWeight.bold),
                provider.buildAutoSizeText("1) التغيرات السلوكية :", 18.00,Colors.black,FontWeight.bold),
                provider.buildAutoSizeText(Dis().s34, 17.00),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: player,
                ),
                provider.buildAutoSizeText("2) علاج اللثة غير الجراحي :", 18.00,Colors.black,FontWeight.bold),
                provider.buildAutoSizeText(Dis().s35, 17.00),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/Dis/31.png'),
                ),
                provider.buildAutoSizeText(Dis().s36, 17.00),
                provider.buildAutoSizeText(Dis().s37, 17.00),
                provider.buildAutoSizeText(Dis().s38, 17.00),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/Dis/32.png'),
                ),
                provider.buildAutoSizeText("3) علاج اللثة الجراحي :", 18.00,Colors.black,FontWeight.bold),
                provider.buildAutoSizeText(Dis().s39, 17.00),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0),
                  child: Image.asset('images/Dis/33.jpg'),
                ),
                Center(child: provider.buildAutoSizeText("صورة توضح علاج اللثة الجراحي – زراعة اللثة.", 15.00)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0),
                  child: Image.asset('images/Dis/34.jpg'),
                ),
                Center(child: provider.buildAutoSizeText("صورة توضح علاج اللثة الجراحي - زراعة العظم.", 15.00)),
                SizedBox(height: getHeight() * 0.03),
              ],
            ),
          ),
        ),
          ),
        )),
      ),
    );
  }

}

