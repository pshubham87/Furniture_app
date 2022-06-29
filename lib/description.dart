// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

// import 'package:furniturestore/main.dart';

class description extends StatefulWidget {
  const description({Key? key}) : super(key: key);

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appColor(context, "", () {}),
        body: Container(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/images/chair1.png",
                height: 200,
                width: 1000,
                color: Colors.orange,
              )),
              Container(
                  height: 200,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Card(
                      shadowColor: Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Chair',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                FavoriteButton(
                                  isFavorite: false,
                                  valueChanged: (_isfavorite) {},
                                ),
                              ],
                            ),
                            Divider(
                              indent: 60,
                              endIndent: 230,
                              thickness: 3,
                              color: Colors.orange,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "\$55",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 120,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Color.fromARGB(255, 246, 90, 62),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/');
                                    },
                                    child: const Text(
                                      'Buy Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]))),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                        Text(
                          "Desccription",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 420,
                        child: Text(
                            "I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide. I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide.I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tideI watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
