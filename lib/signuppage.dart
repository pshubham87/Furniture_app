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
  final formkey = GlobalKey<FormState>();
  MovetoNext(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Name()),
      );
    }
  }

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
          "Sign In  ",
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
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 187, 184, 184),
                          ),
                          controller: tabController,
                          isScrollable: true,
                          labelPadding: EdgeInsets.symmetric(horizontal: 35),
                          tabs: [
                            Tab(
                              child: Text(
                                "Sign Up ",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Tab(
                              child: Text("Log In",
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
              ),
              SizedBox(height: 60),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Column(
                    children: [
                      reuseTextfild("Name", "Name", Icons.person),
                      const SizedBox(height: 20),
                      reuseTextfild("Email", "email", Icons.email),
                      const SizedBox(height: 20),
                      reuseTextfild("password", "PAssword", Icons.password),
                      const SizedBox(height: 20),
                      uiButton(context, "Sign Up", () {}),
                    ],
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field Can't be Empty";
                            }
                          },
                          decoration:
                              InputDecoration(hintText: " +0 (000) 000-00-000"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cant be empty";
                            } else if (value.length < 6) {
                              return "Password Length should be atleast 6";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "password", hintText: "............"),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        SizedBox(height: 30),
                        uiButton(context, "Log In", () {
                          MovetoNext(context);
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

reuseTextfild(String Name, String hint, IconData Iconh) {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      prefixIcon: Icon(Iconh),
      labelText: Name,
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    keyboardType: TextInputType.visiblePassword,
  );
}
