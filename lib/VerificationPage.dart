// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(Verification());
}

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: appColor(context, 'Verification', () {}),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/sms.png",
                  height: 200,
                  width: 200,
                )),
                Text("Verification Code ",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Verificationreuse(),
                    Verificationreuse(),
                    Verificationreuse(),
                    Verificationreuse(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Check the SMS",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("message to get Verification Code"),
                SizedBox(
                  height: 20,
                ),
                uiButton(context, "Continue", () {})
              ],
            ),
          )),
    );
  }
}

Verificationreuse() {
  return SizedBox(
    width: 80,
    height: 80,
    child: TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(0),
          )),
    ),
  );
}
