// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/PaymentPage.dart';
import 'package:task__furnitureapp/filter.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';
import 'package:task__furnitureapp/Namepages.dart';

import 'NotificationPage.dart';
import 'increment.dart';

void main() {
  runApp(const Name());
}

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  int _selectedItems = 0;
  var _pages = [
    filter(),
    increment(),
    PaymentPage(),
    notifi(),
    Firstpages(),
  ];

  var _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItems = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
        ],
        currentIndex: _selectedItems,
        onTap: (index) {
          setState(() {
            _selectedItems = index;
            _pageController.animateToPage(_selectedItems,
                duration: Duration(microseconds: 200), curve: Curves.linear);
          });
        },
      ),
    ));
  }
}
