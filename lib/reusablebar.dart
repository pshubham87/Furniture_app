// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

reusable() {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Color.fromARGB(255, 122, 121, 121),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_bag,
          color: Color.fromARGB(255, 122, 121, 121),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: Color.fromARGB(255, 122, 121, 121),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          color: Color.fromARGB(255, 122, 121, 121),
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.menu,
          color: Colors.amber,
        ),
        label: '',
        backgroundColor: Colors.white,
      ),
    ],
  );
}

appColor() {
  return AppBar(
    elevation: 0,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 255, 243, 71),
              Color.fromARGB(255, 194, 71, 0),
            ]),
      ),
    ),
  );
}

reusemsg({required String offer}) {
  var offer;
  Row(
    children: [
      Icon(
        Icons.message,
        color: Color.fromARGB(255, 109, 102, 102),
      ),
      SizedBox(
        width: 20,
      ),
      MaterialButton(
          onPressed: () {},
          child: Text(
            offer ?? "Messages",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ))
    ],
  );
}
