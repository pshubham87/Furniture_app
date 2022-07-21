// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:task__furnitureapp/screens/Description_page/Description_Page.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

import '../Verification_page/Verification_Page.dart';

class Firstpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appColor(context, "", () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
                      child: CircleAvatar(
                        radius: (52),
                        backgroundImage:
                            AssetImage("assets/images/Profile.png"),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.my_location_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text("city"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: Icon(Icons.message,
                            color: Color.fromARGB(255, 109, 102, 102)),
                        title: Text('Messages',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Verification()),
                          );
                        },
                      ),
                      reusemsg("Notification", Icons.notifications),
                      reusemsg("Account details", Icons.account_box),
                      ListTile(
                        leading: Icon(Icons.message,
                            color: Color.fromARGB(255, 109, 102, 102)),
                        title: Text('MY Purches',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const description()),
                          );
                        },
                      ),
                      reusemsg("Settings ", Icons.settings),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

reusemsg(
  String inputtext,
  IconData iconh,
) {
  return ListTile(
    leading: Icon(iconh, color: Color.fromARGB(255, 109, 102, 102)),
    title: Text(inputtext,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
    onTap: () {},
  );
}
