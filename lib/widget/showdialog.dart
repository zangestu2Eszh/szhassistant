import 'package:flutter/material.dart';

showMyDailog(BuildContext context, {title, children}) {
  showDialog(
      context: context,
      builder: (BuildContext context) =>
          StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
                scrollable: true,
                title: title,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: children,
                ));
          }));
}
