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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    reusemsg("Messages", Icons.message),
                    SizedBox(
                      height: 8,
                    ),
                    reusemsg('notification', Icons.notifications),
                    SizedBox(
                      height: 8,
                    ),
                    reusemsg(
                      "Accont details",
                      Icons.person,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    reusemsg(
                      "Add cart",
                      Icons.shopping_cart,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    reusemsg(
                      "Settings",
                      Icons.settings,
                    ),
                    SizedBox(
                      height: 8,
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

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('secondpage')),
    );
  }
}

class thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('thirdpage')),
    );
  }
}

class fourthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('fourthpage')),
    );
  }
}

reusemsg(
  String inputtext,
  IconData iconh,
) {
  return Row(
    children: [
      Icon(
        iconh,
        color: Color.fromARGB(255, 109, 102, 102),
      ),
      SizedBox(
        width: 20,
      ),
      MaterialButton(
          onPressed: () {},
          child: Text(
            inputtext,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          )),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
