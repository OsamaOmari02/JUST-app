
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/info.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'main.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  late YoutubePlayerController controller;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('هل تريد الخروج من التطبيق؟',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 21)),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text(
                  "نعم",
                  style: TextStyle(fontSize: 17, color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text(
                  "إلغاء",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=qH7TdGIL8og')!,
        flags:
            YoutubePlayerFlags(autoPlay: false, controlsVisibleAtStart: true));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _launchURL(email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    String  url = params.toString();
    await launch(url);
  }
  
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context, listen: false);
    return SafeArea(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: WillPopScope(
                onWillPop: _onWillPop,
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
                    child: Scaffold(
                      appBar:
                          const MainAppBar(title: "علوم طب الأسنان المساندة"),
                      body: Scrollbar(
                        child: ListView(
                          padding: const EdgeInsets.all(12.00),
                          children: [
                            provider.buildAutoSizeText(aboutUs, 18.00),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: player,
                            ),
                            const SizedBox(height: 30),
                            provider.buildAutoSizeText("للتواصل :", 17.00),
                            email('ads@just.edu.jo'),
                            email('tmfalah@just.edu.jo'),
                            email('hala.banihani97@gmail.com'),
                          ],
                        ),
                      ),
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: provider.currentIndex,
                        onTap: (index) {
                          setState(() {
                            provider.currentIndex = index;
                          });
                          if (index == 1 && provider.prevIndex != 1)
                            Navigator.of(context)
                                .pushReplacementNamed('AboutUs');
                          else if (index == 0 && provider.prevIndex != 0)
                            Navigator.of(context)
                                .pushReplacementNamed('MyHomePage');
                          setState(() {
                            provider.prevIndex = index;
                          });
                        },
                        type: BottomNavigationBarType.fixed,
                        items: [
                          bottomNav(Icons.home, "الصفحة الرئيسية"),
                          bottomNav(Icons.perm_identity, "من نحن"),
                        ],
                      ),
                    ),
                  ),
                ))));
  }

  bottomNav(icon, title) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: title, backgroundColor: Colors.greenAccent);
  }

  TextButton email(String email) {
    return TextButton(
        onPressed: () => _launchURL(email),
        child: Text(email,
            style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline)));
  }
}
