import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'info.dart';

class Teeth3 extends StatefulWidget {
  const Teeth3({Key? key}) : super(key: key);

  @override
  _Teeth3State createState() => _Teeth3State();
}

class _Teeth3State extends State<Teeth3> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;

  getHeight() => height = MediaQuery.of(context).size.height;
  late YoutubePlayerController controller;

  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=aY0RKky0qPk')!,
        flags: YoutubePlayerFlags(autoPlay: false,controlsVisibleAtStart: true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context, listen: false);
    return Directionality(
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
          builder: (context, player) => SafeArea(
                child: WillPopScope(
                  onWillPop: () =>
                      Provider.of<MyProvider>(context, listen: false)
                          .onWillPop(context, 'page1'),
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
                              "● طرق الوقاية : [2]",
                              18.00,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText("• نصائح للمساعدة على الوقاية من تسوس الأسنان.", 17.00),
                          provider.buildAutoSizeText(Teeth().s35, 17.00),
                          provider.buildAutoSizeText(Teeth().s36, 17.00),
                          Image.asset('images/Teeth/16.png'),
                          provider.buildAutoSizeText(Teeth().s37, 17.00),
                          provider.buildAutoSizeText(Teeth().s38, 17.00),
                          provider.buildAutoSizeText(Teeth().s39, 17.00),
                          provider.buildAutoSizeText(Teeth().s40, 17.00),
                          provider.buildAutoSizeText(Teeth().s41, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('images/Teeth/17.jpg'),
                          ),
                          provider.buildAutoSizeText(Teeth().s42, 17.00),
                          provider.buildAutoSizeText(Teeth().s43, 17.00),
                          provider.buildAutoSizeText(
                              "● بعض النصائح للآباء للمحافظة على أسنان أطفالهم : [1]",
                              18.00,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText("قبل الولادة :", 17.00,
                              Colors.black, FontWeight.bold),
                          provider.buildAutoSizeText(
                              "- يجب على الاباء زيادة معرفتهما ووعيهما ب تسوس الأسنان ومخاطرة وكيفية الوقاية منه.",
                              17.00),
                          provider.buildAutoSizeText("عند الولادة :", 17.00,
                              Colors.black, FontWeight.bold),
                          provider.buildAutoSizeText(
                              "- يجب ان تتعلم الأمهات الجدد كيفية تنظيف فم أطفالهم.",
                              17.00),
                          provider.buildAutoSizeText(
                              "أ- حديثي الولادة :", 18.00),
                          provider.buildAutoSizeText(Teeth().s44, 17.00),
                          Image.asset('images/Teeth/21.jpg'),
                          provider.buildAutoSizeText(Teeth().s45, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/Teeth/22.png'),
                          ),
                          provider.buildAutoSizeText(
                              "* عدم استخدام العسل مع اللهاي لزيادة تقبل الطفل لِ اللهاي.",
                              17.00),
                          provider.buildAutoSizeText(
                              "ب- في عمر 6 أشهر :", 18.00),
                          provider.buildAutoSizeText(Teeth().s46, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('images/Teeth/23.png'),
                          ),
                          Image.asset('images/Teeth/24.jpg'),
                          provider.buildAutoSizeText(
                              "ج- بعد ١٢ شهراً :", 18.00),
                          provider.buildAutoSizeText(Teeth().s47, 17.00),
                          provider.buildAutoSizeText("د- ٦ سنوات :", 18.00),
                          provider.buildAutoSizeText(Teeth().s48, 17.00),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,0),
                            child: player,
                          ),
                          provider.buildAutoSizeText(controller.metadata.title, 14.00,Colors.blue),
                          provider.buildAutoSizeText("● طرق العلاج : [7]", 18.00,
                              Colors.lightGreen, FontWeight.bold),
                          provider.buildAutoSizeText(Teeth().s49, 17.00),
                          Image.asset('images/Teeth/25.jpg'),
                          provider.buildAutoSizeText(Teeth().s50, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('images/Teeth/27.jpg'),
                          ),
                          provider.buildAutoSizeText(Teeth().s51, 17.00),
                          Image.asset('images/Teeth/28.png'),
                          provider.buildAutoSizeText(Teeth().s52, 17.00),
                          Image.asset('images/Teeth/29.jpg'),
                          provider.buildAutoSizeText(Teeth().s53, 17.00),
                          Image.asset('images/Teeth/30.jpg'),
                          SizedBox(height: getHeight() * 0.05),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
