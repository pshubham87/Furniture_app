// @dart=2.9
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:task__furnitureapp/screens/Basket_Page/My_Baskets.dart';
import 'package:task__furnitureapp/screens/Notification_Page/Notification_Page.dart';
import 'package:task__furnitureapp/screens/Card_Page/Atmcard_Page.dart';
import 'package:task__furnitureapp/screens/Payment_page/Payment_Page.dart';

import 'package:task__furnitureapp/screens/Verification_page/Verification_Page.dart';
import 'package:task__furnitureapp/screens/Description_page/Description_Page.dart';
import 'package:task__furnitureapp/screens/Filter_Page/filter_Page.dart';
import 'package:task__furnitureapp/screens/Profile_Page/Profile_page.dart';
import 'package:task__furnitureapp/screens/Cart_Page/Cart_Page.dart';
import 'package:task__furnitureapp/screens/Profile_Page/namepages.dart';
import 'package:task__furnitureapp/screens/Review_page/reviewUI.dart';
import 'package:task__furnitureapp/screens/Review_page/reviews.dart';
import 'package:task__furnitureapp/Sign_LoginPage.dart';
import 'package:task__furnitureapp/Start_Page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => Name(),
      // When navigating to the "/second" route, build the SecondScreen widget.
    },
  ));
}
