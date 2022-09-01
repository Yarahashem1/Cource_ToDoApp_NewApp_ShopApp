// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// import '../../shared/components/components.dart';
//
// class newScreen extends StatefulWidget {
//   const newScreen({Key? key}) : super(key: key);
//
//   @override
//   State<newScreen> createState() => _newScreenState();
// }
//
// class _newScreenState extends State<newScreen> {
//   var formKey = GlobalKey<FormState>();
//   var isPass = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: AlignmentDirectional.center,
//         children: [
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: Image(
//               image: AssetImage("images/b7ar.PNG") ,
//               fit: BoxFit.fill,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//              color: Colors.black.withOpacity(0.4),
//               width: 300,
//               height: 410,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Form(
//                   key: formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 40),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Programmer Tech",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                               color: Colors.yellow
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 15,),
//                       Text(
//                         "Email",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                             color: Colors.white
//                         ),
//                       ),
//                       TextFormField(
//                         validator: (value) {
//                           if(value!.isEmpty)
//                             return 'Email must be not empty';
//                           return null;
//                         },
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                         decoration: InputDecoration(
//                           hintText: "Enter Email",
//                           hintStyle: TextStyle(
//                               color: Colors.grey[600]
//                           ),
//                           focusColor: Colors.pink,
//
//                         )
//                       ),
//                       SizedBox(height: 15,),
//                       Text(
//                         "Password",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                             color: Colors.white
//                         ),
//                       ),
//                       TextFormField(
//                         obscureText: isPass,
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                         decoration: InputDecoration(
//                           hintStyle: TextStyle(
//                               color: Colors.grey[600]
//                           ),
//                           hintText: "Enter Password",
//                           suffixIcon: IconButton(
//                             icon: isPass ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
//                             onPressed: (){
//                               isPass = !isPass;
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 15,),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadiusDirectional.circular(20),
//                           color: Colors.pink,
//                         ),
//
//                         width: double.infinity,
//                         height: 40,
//                         child: MaterialButton(
//                             onPressed: (){
//                               if(formKey.currentState!.validate()) {}
//                             },
//                             child: Text(
//                                 "Sign In",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold
//                                 ),
//                             ),
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       TextButton(
//                           onPressed: (){},
//                           child: Text(
//                               "Forget Password",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15,
//                                 color: Colors.white
//                               ),
//
//                           ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//                bottom: 400,
//             ),
//             child: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage("images/abed.jpg"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
