// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:task__furnitureapp/increment.dart';

// void main(List<String> args) {
//   runApp(SearchSofa());
// }

// class SearchSofa extends StatefulWidget {
//   const SearchSofa({Key? key}) : super(key: key);

//   @override
//   State<SearchSofa> createState() => _SearchSofaState();
// }

// class _SearchSofaState extends State<SearchSofa> {
//   int _counter = 0;
//   int _count = 0;

//     setState(() {
//       _counter++;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   void _decrement() {
//     setState(() {
//       _count--;
//     });
//   }

//   void _increment() {
//     setState(() {
//       _count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: true,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 80,
//           elevation: 0,
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                     Color.fromARGB(255, 255, 243, 71),
//                     Color.fromARGB(255, 194, 71, 0),
//                   ]),
//             ),
//           ),
//           title: Container(
//             width: MediaQuery.of(context).size.width - 30,
//             height: 50,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(20)),
//             child: Center(
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search),
//                     hintText: 'Search...',
//                     border: InputBorder.none),
//               ),
//             ),
//           ),
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 400,
//               decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/2.png"),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         IconButton(
//                           onPressed: _decrementCounter,
//                           icon: Icon(Icons.remove),
//                         ),
//                         Text(
//                           '$_counter',
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         IconButton(
//                           onPressed: _incrementCounter,
//                           icon: Icon(Icons.add),
//                         )
//                       ],
//                     ),
//                   ),
//                   Text(
//                     "4,453",
//                     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 100,
//               width: 400,
//               decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/2.png"),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         IconButton(
//                           onPressed: _decrement,
//                           icon: Icon(Icons.remove),
//                         ),
//                         Text(
//                           '$_count',
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         IconButton(
//                           onPressed: _increment,
//                           icon: Icon(Icons.add),
//                         )
//                       ],
//                     ),
//                   ),
//                   Text(
//                     "4,453",
//                     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
