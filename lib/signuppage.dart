// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';
import 'package:task__furnitureapp/NamePage.dart';

void main() {
  runApp(const SignPage());
}

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    TabController(length: 2, vsync: this);
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: appColor(
          context,
          "GET STARTED ",
          () {},
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 187, 184, 184),
                        ),
                        controller: tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 40),
                        tabs: [
                          Tab(
                            child: Text(
                              "log in ",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Tab(
                            child: Text("Sign Up",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Center(
                    child: Text("Log In"),
                  ),
                  Column(
                    children: [
                      TextField(
                        decoration:
                            InputDecoration(hintText: " +0 (000) 000-00-000"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "password", hintText: "............"),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      SizedBox(height: 30),
                      uiButton(context, "Sign up", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Name()),
                        );
                      }),
                      Text(
                        "Forgot Your Password ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.purple),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
