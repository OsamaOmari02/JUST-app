import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_info_just/Dis4.dart';
import 'package:medical_info_just/Habit2.dart';
import 'package:medical_info_just/Habit3.dart';
import 'package:medical_info_just/Habit4.dart';
import 'package:medical_info_just/Habit6.dart';
import 'package:medical_info_just/Teeth2.dart';
import 'package:medical_info_just/Teeth3.dart';
import 'package:medical_info_just/Treat2.dart';
import 'package:medical_info_just/nextPage.dart';
import 'package:medical_info_just/provider.dart';
import 'package:medical_info_just/settings.dart';
import 'package:provider/provider.dart';

import 'Dis1.dart';
import 'Dis2.dart';
import 'Dis3.dart';
import 'Habit1.dart';
import 'Habit5.dart';
import 'Mouth1.dart';
import 'Mouth2.dart';
import 'Mouth3.dart';
import 'Mouth4.dart';
import 'Nice1.dart';
import 'Nice2.dart';
import 'Nice3.dart';
import 'Nice4.dart';
import 'Teeth1.dart';
import 'Treat1.dart';
import 'Treat3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyProvider>(create: (_) => MyProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      themeMode: ThemeMode.light,
      routes: {
        'MyHomePage': (context) => const MyHomePage(),
        // 'settings': (context) => const Settings(),
        'NextPage': (context) => const NextPage(),
        'MouthPage1': (context) => const Mouth1(),
        'MouthPage2': (context) => const Mouth2(),
        'MouthPage3': (context) => const Mouth3(),
        'MouthPage4': (context) => const Mouth4(),
        'NicePage1': (context) => const Nice1(),
        'NicePage2': (context) => const Nice2(),
        'NicePage3': (context) => const Nice3(),
        'NicePage4': (context) => const Nice4(),
        'TreatPage1': (context) => const Treat1(),
        'TreatPage2': (context) => const Treat2(),
        'TreatPage3': (context) => const Treat3(),
        'HabitPage1': (context) => const Habit1(),
        'HabitPage2': (context) => const Habit2(),
        'HabitPage3': (context) => const Habit3(),
        'HabitPage4': (context) => const Habit4(),
        'HabitPage5': (context) => const Habit5(),
        'HabitPage6': (context) => const Habit6(),
        'DisPage1': (context) => const Dis1(),
        'DisPage2': (context) => const Dis2(),
        'DisPage3': (context) => const Dis3(),
        'DisPage4': (context) => const Dis4(),
        'TeethPage1' : (context) => const Teeth1(),
        'TeethPage2' : (context) => const Teeth2(),
        'TeethPage3' : (context) => const Teeth3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;
  getHeight() => height = MediaQuery.of(context).size.height;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('هل تريد الخروج؟',textDirection: TextDirection.rtl,
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

  Widget funImage(title, image, route) {
    return ListTile(
      onTap: () {
        Provider.of<MyProvider>(context,listen: false).idx = title;
        Navigator.of(context).pushNamed(route);
      },
      title: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          image,
          height: getHeight() * 0.155,
          fit: BoxFit.fill,
        ),
      ),
      subtitle: Text(title,
          style: TextStyle(
              color: Colors.black,
              fontSize: getWidth() * 0.042,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: const MainAppBar(title: "صحة فم المجتمع"),
            // drawer: const MyDrawer(),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
              child: GridView(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1.1,
                ),
                children: [
                  funImage(
                      "صحة الفم", 'images/صحة الفم/صحة الفم.png', 'NextPage'),
                  funImage(
                      "طب الأسنان التجميلي",
                      'images/طب الاسنان التجميلي/طب الاسنان التجميلي.png',
                      'NextPage'),
                  funImage("العلاج الوقائي",
                      'images/العلاج الوقائي/العلاج الوقائي.jpg', 'NextPage'),
                  funImage("العادات الفموية السيئة",'images/Habit/1.png','NextPage'),
                  funImage("أمراض اللثة",'images/Habit/1.png','NextPage'),
                  funImage("تسوس الأسنان",'images/Teeth/1.jpg','NextPage'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double barHeight = 50.0;

  const MainAppBar({required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 80.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: ClipPath(
          clipper: WaveClip(),
          child: Container(
            color: Colors.green,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 40),
                Text(title,
                    style: const TextStyle(fontSize: 24, color: Colors.white)),
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight + 100));
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final lowPoint = size.height - 30;
    final highPoint = size.height - 60;

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
