// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:task__furnitureapp/signuppage.dart';

void main() {
  runApp(MyStart());
}

class MyStart extends StatelessWidget {
  const MyStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 255, 243, 71),
                  Color.fromARGB(255, 194, 71, 0),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 80)),
                Container(),
                Text(
                  "ONLINE FURNITURE \nSTORE",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: Image.asset(
                    "assets/images/2.png",
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  height: 60,
                  width: 250,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignPage()),
                      );
                    },
                    child: Text(
                      " GET STARTED",
                      style: TextStyle(
                        color: Color.fromARGB(255, 156, 10, 179),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Dont Have An Account??",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in Here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                  indent: 180,
                  endIndent: 180,
                  color: Colors.white,
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
