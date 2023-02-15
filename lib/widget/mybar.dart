import 'package:flutter/material.dart';
import 'package:szhassistant/tools/size.dart';

myAppBar(BuildContext context,
    {
    // Color
    color,
    // String
    title,
    // bool
    disableTitle,
    // bool
    centerTitle,
    // double
    height,
    // Widget
    leading,
    // bool
    rtl,
    // bool
    disableActions,
    // dynamic
    space,
    // double
    elevation,
    topLeft,
    topRight,
    bottomLeft,
    bottomRight}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(getSize(context, height)),
      child: Directionality(
          textDirection: (rtl) ? TextDirection.rtl : TextDirection.ltr,
          child: AppBar(
            elevation: double.parse(elevation.toString()),
            backgroundColor: color,
            title: (disableTitle) ? const SizedBox.shrink() : Text(title),
            centerTitle: centerTitle,
            actions: [
              (!disableActions)
                  ? IconButton(
                      onPressed: () {
                        Navigator.pop(Navigator.of(context).context);
                      },
                      icon: const Icon(Icons.arrow_forward))
                  : const SizedBox.shrink()
            ],
            leading: leading,
            flexibleSpace: space,
            shape: getAppBarBorder(
              topLeft,
              topRight,
              bottomLeft,
              bottomRight,
            ),
          )));
}

getAppBarBorder(topRight, topLeft, bottomRight, bottomLeft) {
  return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topRight: Radius.circular(double.parse(topRight.toString())),
    topLeft: Radius.circular(double.parse(topLeft.toString())),
    bottomRight: Radius.circular(double.parse(bottomRight.toString())),
    bottomLeft: Radius.circular(double.parse(bottomLeft.toString())),
  ));
}

class Border {
  final topLeft;
  final topRight;
  final bottomLeft;
  final bottomRight;
  Border(
      {required this.topLeft,
      required this.topRight,
      required this.bottomLeft,
      required this.bottomRight});
}
