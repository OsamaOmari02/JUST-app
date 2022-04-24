// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:medical_info_just/drawer.dart';
// import 'package:medical_info_just/provider.dart';
// import 'package:provider/provider.dart';
//
// class Settings extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);
//
//   @override
//   _SettingsState createState() => _SettingsState();
// }
//
// class _SettingsState extends State<Settings> {
//
//   double? width;
//   double? height;
//   getWidth() => width = MediaQuery.of(context).size.width;
//   getHeight() => height = MediaQuery.of(context).size.height;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: WillPopScope(
//         onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'NextPage'),
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text("Settings"),
//             centerTitle: true,
//           ),
//           drawer: const MyDrawer(),
//           body: ListView(
//             children: [
//               SizedBox(height: getHeight() * 0.05),
//               ListTile(
//                 leading: const Icon(Icons.dark_mode),
//                 title: Text("Dark Mode",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600, fontSize: getWidth() * 0.05)),
//                 trailing: Switch(
//                     activeColor: Colors.blueAccent,
//                     activeTrackColor: Colors.blue[200],
//                     value: Provider.of<MyProvider>(context).isDark,
//                     onChanged: (bool val) async {
//                       await Provider.of<MyProvider>(context,listen: false).setDarkMode(val);
//                     }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
