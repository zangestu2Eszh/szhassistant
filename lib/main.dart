import 'package:flutter/material.dart';
import 'package:szhassistant/widget/mybar.dart';
import 'package:szhassistant/widget/showdialog.dart';
import 'runmain/conf.dart';
import 'theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    myConf(black, white, "Cairo");

    return myMaterialApp(const Home(), "");
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, black, "hi", false, false, 0.05,
            const Icon(Icons.wallet), false, false),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showMyDailog(context, const SizedBox.shrink(), []);
            },
            child: const Text("Click Me"),
          ),
        ));
  }
}
