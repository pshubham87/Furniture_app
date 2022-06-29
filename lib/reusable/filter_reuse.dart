// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

filterreuse() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.4))),
      width: 120,
      child: Center(
        child: Image.asset(
          "assets/images/2.png",
          color: Colors.red,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Pricing() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 30.0,
      left: 27,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Pricing",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ],
    ),
  );
}

Colorsprice() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20.0,
      left: 27,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Colors",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ],
    ),
  );
}

ColorCircle(
  Color color,
) {
  return InkWell(
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    ),
    onTap: () {},
  );
}

BottomBar() {
  return BottomNavigationBar(
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
  );
}
