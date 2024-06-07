/*
 * @Author: JY 397879704@qq.com
 * @Date: 2024-06-05 12:06:06
 * @LastEditors: JY 397879704@qq.com
 * @LastEditTime: 2024-06-07 23:30:38
 * @FilePath: /flutter_application_1/lib/main.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:login_sdk/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  const MyHomePage({super.key, required this.title});

//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.

//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".

//  final String title;

//  @override
//  State<MyHomePage> createState() => _MyHomePageState();
//}

//class _MyHomePageState extends State<MyHomePage> {
//  int _count = 0;
//  String tips = "";
//  bool _toggle = true;

//  int comLogin = LoginConfig().addOne(1);

//  get _dyWidget => _toggle ? const Text("Widget1") : const Text("Widget");

//  get _listView => ListView(
//        children: const [
//          Text("快速上手Flutter"),
//          Text("快速上手Flutter"),
//          Text("快速上手Flutter"),
//          Text("快速上手Flutter"),
//        ],
//      );

//  void _incrementCounter() {}

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: GestureDetector(
//          child: Text("press me one more $_count"),
//          onTap: () {
//            setState(() {
//              _count++;
//            });
//          },
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _updateWidget,
//        tooltip: 'Increment',
//        child: const Icon(Icons.add),
//      ),
//    );
//  }

//  void _updateTips() {
//    setState(() {
//      tips = "快速上手flutter";
//    });
//  }

//  void _updateWidget() {
//    setState(() {
//      _toggle = !_toggle;
//    });
//  }
//}

////创建自定义的组件
//class TipsWidget extends StatelessWidget {
//  const TipsWidget({super.key});

//  @override
//  Widget build(BuildContext context) {
//    return const Text("This is a tips");
//  }
//}
