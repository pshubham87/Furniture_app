// ignore_for_file: prefer_const_constr, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(MyBaskets());
}

class MyBaskets extends StatefulWidget {
  const MyBaskets({Key? key}) : super(key: key);

  @override
  State<MyBaskets> createState() => _MyBasketsState();
}

class _MyBasketsState extends State<MyBaskets> {
  int _itemCount = 1;
  StreamController<int> countercontroller = StreamController<int>();
  // int _counter = 0;

  // void _MyBasketsCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  List<String> Price = [
    "\$775",
    "\$95",
    "\$215",
    "\$445",
    "\$121",
    "\$454",
    "\$542",
    "\$542",
  ];
  List<String> product = [
    "assets/images/2.png",
    "assets/images/Chair1.png",
    "assets/images/couch.png",
    "assets/images/Chair1.png",
    "assets/images/couch.png",
    "assets/images/8.png",
    "assets/images/6.png",
    "assets/images/2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appColor(context, 'MyBaskets', () {}),
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
                                height: 80,
                                width: 80,
                                image: AssetImage(product[index].toString()),
                                color: Colors.red,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    Price[index].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () => setState(() =>
                                        _itemCount != 0
                                            ? _itemCount--
                                            : _itemCount),
                                  ),
                                  Text(
                                    _itemCount.toString(),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        _itemCount++;
                                        countercontroller.sink.add(_itemCount);
                                      }
                                      // => setState(
                                      //   () => _itemCount != 0
                                      //       ? _itemCount++
                                      //       : _itemCount,
                                      // ),
                                      ),
                                  SizedBox(
                                    width: 15,
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
