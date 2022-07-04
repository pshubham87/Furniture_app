// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

reusepayment(
  BuildContext context,
  String title,
  Function onTap,
  IconData Iconh,
) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Container(
      width: 70,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(255, 255, 255, 1)),
      child: ListTile(
        
        onTap: () {
          onTap();
        },
        title: Text(title),
        trailing: Icon(
          Iconh,
          color: Colors.red,
        ),
      ),
    ),
  );
}
