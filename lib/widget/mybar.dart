import 'package:flutter/material.dart';
import 'package:szhassistant/tools/size.dart';

myAppBar(
    BuildContext context,
    Color color,
    String title,
    bool disabletitle,
    bool centertitle,
    double height,
    Widget leading,
    bool rtl,
    bool disableactions) {
  return PreferredSize(
      preferredSize: Size.fromHeight(getSize(context, height)),
      child: Directionality(
          textDirection: (rtl) ? TextDirection.rtl : TextDirection.ltr,
          child: AppBar(
            backgroundColor: color,
            title: (disabletitle) ? const SizedBox.shrink() : Text(title),
            centerTitle: centertitle,
            actions: [
              (disableactions)
                  ? IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_forward))
                  : const SizedBox.shrink()
            ],
            leading: leading,
          )));
}
