// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Firstpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 40),
                      child: CircleAvatar(
                        radius: (52),
                        // backgroundColor: Colors.black,
                        backgroundImage: AssetImage("assets/images/4.jpg"),
                      ),
                    ),
                  )
                ],
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
                height: 40,
              ),
              Center(
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        reusemsg("Messages", Icons.message),
                        reusemsg("Notification", Icons.notifications),
                        reusemsg("Account details", Icons.account_box),
                        reusemsg("My Purches", Icons.shopping_cart),
                        reusemsg("Settings", Icons.settings),
                      ],
                    ),
                  ],
                ),
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
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
    onTap: () {},
  );
}
