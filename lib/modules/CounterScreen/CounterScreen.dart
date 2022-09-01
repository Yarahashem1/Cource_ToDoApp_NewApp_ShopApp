// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CounterScreen extends StatefulWidget {
//   const CounterScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CounterScreen> createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(backgroundColor: Colors.white,elevation: 0,),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(onPressed: (){setState(() {
//               count++;
//             });}, child: Text('Plus')),
//             Text('$count'),
//             TextButton(onPressed: (){setState(() {
//               count--;
//             });}, child: Text('Minus')),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
