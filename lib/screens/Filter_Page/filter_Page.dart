// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';
import 'package:task__furnitureapp/reusable/filter_reuse.dart';

void main(List<String> args) {
  runApp(filter());
}

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  RangeValues values = const RangeValues(25, 50);

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  RangeValues _currentRangeValues = RangeValues(25, 100);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appColor(
          context,
          "Filters",
          () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categaries",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, elevation: 0),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "More",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    filterreuse(),
                    filterreuse(),
                    filterreuse(),
                    filterreuse(),
                    filterreuse(),
                  ],
                ),
              ),
              Pricing(),
              RangeSlider(
                values: _currentRangeValues,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
                activeColor: Colors.purple,
                inactiveColor: Colors.amber,
              ),
              Colorsprice(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorCircle(Colors.amber),
                  ColorCircle(Colors.orange),
                  ColorCircle(Colors.green),
                  ColorCircle(Colors.pink),
                  ColorCircle(Colors.red),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorCircle(Color.fromARGB(255, 196, 196, 196)),
                  ColorCircle(Colors.purple),
                  ColorCircle(Colors.grey),
                  ColorCircle(Color.fromARGB(255, 33, 163, 219)),
                  ColorCircle(Colors.black),
                ],
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
