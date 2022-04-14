import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_info_just/drawer.dart';
import 'package:medical_info_just/nextPage.dart';
import 'package:medical_info_just/provider.dart';
import 'package:medical_info_just/settings.dart';
import 'package:provider/provider.dart';

import 'Mouth.dart';
import 'Nice.dart';
import 'Treat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await Firebase.initializeApp();
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      themeMode: Provider.of<MyProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark, accentColor: Colors.white),
      routes: {
        'MyHomepage': (context) => const MyHomePage(),
        'settings' : (context) => const Settings(),
        'NextPage' : (context) => const NextPage(),
        'page1' : (context) => const Mouth(),
        'page2' : (context) => const Nice(),
        'page3' : (context) => const Treat(),
        // 'page1' : (context) => const Mouth(),
        // 'page1' : (context) => const Mouth(),
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
  Widget grid(image, title) {
    return ListTile(
      onTap: () {},
      title: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          image,
          height: getHeight() * 0.135,
          fit: BoxFit.fill,
        ),
      ),
      subtitle: Text(title,
          style: TextStyle(
              color: Provider
                  .of<MyProvider>(context)
                  .isDark ? Colors.white : Colors.black,
              fontSize: getWidth() * 0.042,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Do you want to exit ?',
            style: TextStyle(fontSize: 21)),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text("Yes",
              style: TextStyle(fontSize: 17, color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("Cancel",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    )) ??
        false;
  }

  Widget funImage(title,image,route) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(route),
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
              color: Provider.of<MyProvider>(context).isDark? Colors.white:Colors.black,
              fontSize: getWidth()*0.042,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
  @override
  void initState() {
    Provider.of<MyProvider>(context, listen: false).getDarkMode();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: const MainAppBar(title: "صحة المجتمع"),
            // drawer: const MyDrawer(),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
              child: GridView(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1.2,
                ),
                children: [
                  funImage("صحة الفم",'images/صحة الفم/صحة الفم.png','NextPage'),
                  funImage("طب الأسنان التجميلي",'images/طب الاسنان التجميلي/طب الاسنان التجميلي.png','page2'),
                  funImage("العلاج الوقائي",'images/العلاج الوقائي/العلاج الوقائي.jpg','page3'),
                  // funImage("title",'images/العلاج الوقائي/العلاج الوقائي.jpg'),
                  // funImage("title"),
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
            color: Colors.blue,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 40),
                Text(title,style: const TextStyle(fontSize: 24,color: Colors.white)),
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
    path.quadraticBezierTo(
        size.width / 4, highPoint, size.width / 2, lowPoint);
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
