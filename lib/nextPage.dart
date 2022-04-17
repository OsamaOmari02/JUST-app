import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: ()=> Provider.of<MyProvider>(context,listen: false).onWillPop(context,'NextPage'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("صحة الفم"),
            ),
            body: ListView(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              children: [
                _listTile("سرطان الفم", 'MouthPage1'),
                _listTile("كسور ورضوض الأسنان", 'MouthPage2'),
                _listTile("تفريش الأسنان", 'MouthPage3'),
                _listTile("خيط الأسنان", 'MouthPage4'),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Padding _listTile(text,route){
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        title: Text(text,
          style: const TextStyle(fontSize: 19,color: Colors.black),
        ),
        trailing: const Icon(Icons.arrow_forward,color: Colors.indigo,),
        onTap: () => Navigator.of(context).pushNamed(route),
      ),
    );
  }
}
