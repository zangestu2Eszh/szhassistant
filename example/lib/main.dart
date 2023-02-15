import 'package:flutter/material.dart';
import 'package:szhassistant/runmain/conf.dart';
import 'package:szhassistant/theme/colors.dart';
import 'package:szhassistant/theme/textsize.dart';
import 'package:szhassistant/tools/SizeConfig.dart';
import 'package:szhassistant/tools/size.dart';
import 'package:szhassistant/widget/mybar.dart';
import 'package:szhassistant/widget/showdialog.dart';

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
    myConf(black, white);

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
    SizeConfig().init(context);
    return Scaffold(
        appBar: myAppBar(context,
            color: black,
            title: "My Example",
            disableTitle: false,
            centerTitle: false,
            height: 0.2,
            leading: const Icon(Icons.visibility),
            rtl: false,
            disableActions: true,
            space: Container(
              padding: EdgeInsets.all(getSize(context, 0.01)),
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: getSizeHeight(context, 0.1),
                  bottom: getSizeHeight(context, 0.01),
                  right: getSizeHeight(context, 0.01),
                  left: getSizeHeight(context, 0.01)),
              decoration: BoxDecoration(
                  color: gray,
                  borderRadius: BorderRadius.all(
                      Radius.circular(getSize(context, 0.02)))),
              height: getSizeHeight(context, 0.2),
              child: Text(
                "App Bar Body Here",
                style: TextStyle(
                    color: white,
                    fontSize: SizeConfig.blockSizeVertical * textSize2_5),
              ),
            ),
            elevation: 0,
            topRight: 0,
            topLeft: 0,
            bottomLeft: getSize(context, 0.02),
            bottomRight: getSize(context, 0.02)),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showMyDailog(context,
                  title: const Text("Title Here:"),
                  children: [
                    const Text("Children Here"),
                  ]);
            },
            style: ElevatedButton.styleFrom(backgroundColor: black),
            child: const Text("Show Dailog"),
          ),
        ));
  }
}
