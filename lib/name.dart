// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:task__furnitureapp/reusablebar.dart';

// void main() {
//   runApp(const name());
// }

// class name extends StatefulWidget {
//   const name({Key? key}) : super(key: key);

//   @override
//   State<name> createState() => _nameState();
// }

// class _nameState extends State<name> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: appColor(),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 30),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 25),
//             child: Column(children: [
//               Column(
//                 children: [
//                   Container(
//                     child: Center(
//                       child: Container(
//                         padding: EdgeInsets.only(top: 40),
//                         child: CircleAvatar(
//                           radius: (52),
//                           // backgroundColor: Colors.black,
//                           backgroundImage: AssetImage("assets/images/4.jpg"),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Text(
//                 "Your Name",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.my_location_outlined),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text("city"),
//                 ],
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.message,
//                           color: Color.fromARGB(255, 109, 102, 102),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         MaterialButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Messages",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.w400),
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.notifications,
//                           color: Color.fromARGB(255, 109, 102, 102),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         MaterialButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Notification",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.w400),
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.person,
//                           color: Color.fromARGB(255, 109, 102, 102),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         MaterialButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Accont details",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.w400),
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.shopping_cart,
//                           color: Color.fromARGB(255, 109, 102, 102),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         MaterialButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Add cart",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.w400),
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.settings,
//                           color: Color.fromARGB(255, 109, 102, 102),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         MaterialButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Settings",
//                               style: TextStyle(
//                                   fontSize: 25, fontWeight: FontWeight.w400),
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//       bottomNavigationBar: reusable(),
//     ));
//   }
// }
