import 'package:flutter/material.dart';
import 'package:task__furnitureapp/Shoppingcart.dart';
import 'package:task__furnitureapp/name.dart';
import 'package:task__furnitureapp/signuppage.dart';
import 'package:task__furnitureapp/started.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const MyStart(),
      // When navigating to the "/second" route, build the SecondScreen widget.
    },
  ));
}
