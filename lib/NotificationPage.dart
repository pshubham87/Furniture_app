// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(notifi());
}

class notifi extends StatefulWidget {
  notifi({Key? key}) : super(key: key);

  @override
  State<notifi> createState() => _notifiState();
}

class _notifiState extends State<notifi> {
  var _value = false;
  var _toggle = false;
  var _chnge = true;
  var _change = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appColor(context, "Notification", () {}),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 50),
            child: Column(
              children: [
                Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SwitchListTile(
                        title: Titleuse("product updates"),
                        subtitle:
                            Text("furniture app,chaire , table ,and more.."),
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      dividerreuse(),
                      SwitchListTile(
                        title: Titleuse("Comments"),
                        subtitle:
                            Text("furniture app,chaire , table ,and more.."),
                        value: _toggle,
                        onChanged: (value) {
                          setState(() {
                            _toggle = value;
                          });
                        },
                      ),
                      dividerreuse(),
                      SwitchListTile(
                        title: Titleuse("Offer Updates"),
                        subtitle:
                            Text("furniture app,chaire , table ,and more.."),
                        value: _change,
                        onChanged: (value) {
                          setState(() {
                            _change = value;
                          });
                        },
                      ),
                      dividerreuse(),
                      SwitchListTile(
                        title: Titleuse("Notifications"),
                        subtitle:
                            Text("furniture app,chaire , table ,and more.."),
                        value: _chnge,
                        onChanged: (value) {
                          setState(() {
                            _chnge = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                uiButton(context, "Update setting", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

dividerreuse() {
  return Divider(
    thickness: 2,
    indent: 10,
    endIndent: 10,
    color: Colors.grey,
  );
}

Titleuse(String title) {
  return Text(
    title,
    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
  );
}
