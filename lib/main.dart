// @dart=2.9
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:task__furnitureapp/MyBaskets.dart';
import 'package:task__furnitureapp/NotificationPage.dart';
import 'package:task__furnitureapp/AtmCardpay.dart';
import 'package:task__furnitureapp/PaymentPage.dart';
import 'package:task__furnitureapp/SearchSofa.dart';
import 'package:task__furnitureapp/Shoppingcart.dart';
import 'package:task__furnitureapp/VerificationPage.dart';
import 'package:task__furnitureapp/description.dart';
import 'package:task__furnitureapp/filter.dart';
import 'package:task__furnitureapp/NamePage.dart';
import 'package:task__furnitureapp/increment.dart';
import 'package:task__furnitureapp/namepages.dart';
import 'package:task__furnitureapp/reviewUI.dart';
import 'package:task__furnitureapp/reviews.dart';
import 'package:task__furnitureapp/signuppage.dart';
import 'package:task__furnitureapp/started.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => MyStart(),
      // When navigating to the "/second" route, build the SecondScreen widget.
    },
  ));
}
