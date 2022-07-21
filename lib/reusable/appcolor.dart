// ignore_for_file: non_constant_identifier_names, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/screens/Profile_Page/Profile_page.dart';

Container uiButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: 250,
    // width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.amber;
            }
            return const Color(0XFFD35E2D);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}

appColor(
  BuildContext context,
  String title,
  Function onTap,
) {
  return AppBar(
      toolbarHeight: 60,
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
      title: Center(child: Text(title, textAlign: TextAlign.center)),
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }));
}
