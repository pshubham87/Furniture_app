// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(Shoppingcart());
}

class Shoppingcart extends StatelessWidget {
  const Shoppingcart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: appColor(
        context,
        "",
        () {},
      )),
    );
  }
}
