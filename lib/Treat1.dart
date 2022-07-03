import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

  late YoutubePlayerController controller;

  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=yq5u5InSDlc')!,
        flags:
            YoutubePlayerFlags(autoPlay: false, controlsVisibleAtStart: true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context, listen: false);
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
                  onWillPop: () =>
                      Provider.of<MyProvider>(context, listen: false)
                          .onWillPop(context, 'page1'),
                  child: Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title: const Text("المادة السادة الوقائية"),
                    ),
                    body: Scrollbar(
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                        children: [
                          SizedBox(height: getHeight() * 0.03),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: player,
                          ),
                          provider.buildAutoSizeText("● المفهوم :", 18.00,
                              Colors.lightGreen, FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s2, 17.00),
                          provider.buildAutoSizeText(
                              "● من الذي يمكنهم الحصول علي الماده السادة الوقائية ؟",
                              17.50,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s3, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/العلاج الوقائي/1.jpg'),
                          ),
                          provider.buildAutoSizeText(
                              "● كيف تحمي المواد السادة الوقائية الاسنان ؟ [5]",
                              17.50,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s4, 17.00),
                          provider.buildAutoSizeText(
                              "● كيفية الاعتناء بالاسنان بعد الحصول علي المادة السادة الوقائية ؟ [3]",
                              17.50,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s5, 17.00),
                          provider.buildAutoSizeText(
                              "● بعض النصائح المنزلية : [2]",
                              17.50,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s43, 17.00),
                          provider.buildAutoSizeText(
                              "● فعالية المادة السادة الوقائية : [2]",
                              18.00,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s6, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset('images/العلاج الوقائي/2.jpg'),
                          ),
                          provider.buildAutoSizeText(
                              "● طول عمر المادة السادة الوقائية :",
                              18.00,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(Treat().s7, 17.00),
                          provider.buildAutoSizeText(
                              "● استخداماتها وموانع الاستخدام :",
                              18.00,
                              Colors.lightGreen,
                              FontWeight.bold),
                          provider.buildAutoSizeText(
                              "* أحد دواعي استخدامها للمرضى أو للأسنان الأكثر عرضةً للتسوس. وهؤلاء المرضى هم الذين لديهم :",
                              17.00),
                          provider.buildAutoSizeText(Treat().s8, 17.00),
                          provider.buildAutoSizeText(
                              "* موانع استخدامه هو للمرضى أو الأسنان الأقل عرضةً للتسوس. وهو يتضمن المرضى الذين لديهم : [1]",
                              17.50),
                          provider.buildAutoSizeText(Treat().s9, 17.00),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset('images/العلاج الوقائي/3.png'),
                          ),
                          provider.buildAutoSizeText("● طريقة تطبيقه : [4]", 18.00,
                              Colors.lightGreen, FontWeight.bold),
                          provider.buildAutoSizeText(
                              "الطريقة المستخدمة تعتمد على المادة المستخدمة.",
                              17.00),
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
              ),
            )));
  }
}
