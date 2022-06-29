// ignore_for_file: prefer_const_constr, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(increment());
}

class increment extends StatefulWidget {
  const increment({Key? key}) : super(key: key);

  @override
  State<increment> createState() => _incrementState();
}

class _incrementState extends State<increment> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  List<String> product = [
    "assets/images/2.png",
    // "assets/images/2.png",
    // "assets/images/2.png",
    // "assets/images/2.png",
    // "assets/images/2.png"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 255, 243, 71),
                    Color.fromARGB(255, 194, 71, 0),
                  ]),
            ),
          ),
          title: Container(
            width: MediaQuery.of(context).size.width - 30,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                height: 100,
                                width: 100,
                                image: AssetImage("assets/images/2.png"),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: _decrementCounter,
                                    icon: Icon(Icons.remove),
                                  ),
                                  Text(
                                    '$_counter',
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  IconButton(
                                    onPressed: _incrementCounter,
                                    icon: Icon(Icons.add),
                                  ),
                                  Text(
                                    "4,453",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
