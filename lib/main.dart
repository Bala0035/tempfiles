import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: StockDetails(),
    );
  }
}

// class Home extends StatelessWidget {
//   Home({super.key});
//   var name = "Name";
//   List names = ["bala", 'prakash', "krishna"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: names.length,
//         itemBuilder: ((context, index) {
//           return mycard(name: names[index]);
//         }),
//       ),
//     );
//   }
// }

// class mycard extends StatelessWidget {
//   const mycard({
//     Key? key,
//     required this.name,
//   }) : super(key: key);

//   final String name;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.redAccent,
//       margin: EdgeInsets.all(10),
//       height: 150,
//       width: 100,
//       child: Column(
//         children: [Text(name), Text("ID"), Text("Department")],
//       ),
//     );
//   }
// }
