// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:task__furnitureapp/Sign_LoginPage.dart';

void main() {
  runApp(MyStart());
}

class MyStart extends StatefulWidget {
  @override
  State<MyStart> createState() => _MyStartState();
}

class _MyStartState extends State<MyStart> {
  bool ChangeButton = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: SingleChildScrollView(
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
                InkWell(
                  onTap: () async {
                    setState(() {
                      ChangeButton = true;
                    });
                    await Future.delayed(Duration(milliseconds: 800));
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignPage()));
                    setState(() {
                      ChangeButton = false;
                    });
                  },
                  child: AnimatedContainer(
                    curve: Curves.linear,
                    duration: Duration(milliseconds: 800),
                    height: 60,
                    width: ChangeButton ? 60 : 250,
                    alignment: Alignment.center,
                    child: ChangeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : Text(
                            " GET STARTED",
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 10, 179),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                    decoration: BoxDecoration(
                        color: ChangeButton ? Colors.green : Colors.white,
                        borderRadius:
                            BorderRadius.circular(ChangeButton ? 60 : 30)),
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
