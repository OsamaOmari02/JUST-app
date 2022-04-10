
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  ListTile listTile(String title, icon, route, BuildContext ctx) {
    return ListTile(
      onTap: () => Navigator.of(ctx).pushReplacementNamed(route),
      title: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
      leading: Icon(
        icon,
        color: Colors.blueAccent,
      ),
    );
  }

  double? width;
  double? height;

  getWidth() => width = MediaQuery.of(context).size.width;
  getHeight() => height = MediaQuery.of(context).size.height;
  // dialog(title) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext ctx) {
  //         return AlertDialog(
  //           title: Text(
  //             title,
  //             textAlign:  Provider.of<LanProvider>(context).isEn ? TextAlign.start : TextAlign.end,
  //             style: const TextStyle(fontSize: 23),
  //           ),
  //           contentPadding: const EdgeInsets.symmetric(vertical: 7),
  //           elevation: 24,
  //           content: Container(
  //             height: 30,
  //             child: const Divider(),
  //             alignment: Alignment.topCenter,
  //           ),
  //           actions: [
  //             const SizedBox(width: 11),
  //             InkWell(
  //                 child: Text( Provider.of<LanProvider>(context,listen: false).texts('ok'),
  //                     style: const TextStyle(fontSize: 19)),
  //                 onTap: () => Navigator.of(context).pop()),
  //           ],
  //         );
  //       });
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            // const DrawerHeader(
            //   child: Text(""),
            //   padding: EdgeInsets.all(0),
            // ),
            Row(
              children: [
                SizedBox(width: getWidth() * 0.03),
                const Expanded(
                    child: Text("",
                      style: TextStyle(fontSize: 21),
                    )),
              ],
            ),
            listTile("Home", Icons.home, 'MyHomepage', context),
            const Divider(thickness: 1.5),
            listTile("Settings", Icons.settings, 'settings', context),
          ],
        ),
      ),
    );
  }
}
