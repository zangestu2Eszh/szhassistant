import 'package:flutter/material.dart';

getSize(BuildContext context, double size) {
  return (MediaQuery.of(context).orientation == Orientation.portrait)
      ? MediaQuery.of(context).size.height * size
      : MediaQuery.of(context).size.width * size;
}

getSizeHeight(BuildContext context, double size) {
  return (MediaQuery.of(context).orientation == Orientation.portrait)
      ? MediaQuery.of(context).size.height * size
      : MediaQuery.of(context).size.width * size;
}

getSizeWidth(BuildContext context, double size) {
  return (MediaQuery.of(context).orientation == Orientation.portrait)
      ? MediaQuery.of(context).size.width * size
      : MediaQuery.of(context).size.height * size;
}
