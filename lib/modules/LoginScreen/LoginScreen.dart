// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled1/modules/HomeScreen/HomeScreen.dart';
//
// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   var formKey = GlobalKey<FormState>();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var isPassword = true;
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//        body: Padding(
//          padding: const EdgeInsets.all(20),
//          child: Form(
//            key: formKey,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Text(
//                    "Login",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40,
//                     ),
//                ),
//                SizedBox(height: 40,),
//                TextFormField(
//                  controller: emailController,
//                  decoration: InputDecoration(
//                    labelText: "Email Address",
//                    prefixIcon: Icon(Icons.email),
//                    suffixIcon: Icon(Icons.account_box),
//                    border: OutlineInputBorder(),
//                  ),
//                  keyboardType: TextInputType.emailAddress,
//                  validator: (value) {
//                    if(value!.isEmpty) {
//                       return 'Email address must be not empty';
//                    }
//                    return null;
//                  },
//                ),
//                SizedBox(height: 15,),
//                TextFormField(
//                   controller: passwordController,
//                  decoration: InputDecoration(
//                    labelText: "Password",
//                    prefixIcon: Icon(Icons.lock),
//                    suffixIcon: IconButton(icon: isPassword ? Icon(Icons.visibility_rounded) : Icon(Icons.visibility_off),
//                      onPressed:(){
//                         setState(() {
//                            isPassword = !isPassword;
//                         });
//                      } ,
//                    ),
//                    border: OutlineInputBorder(),
//                  ),
//                  keyboardType: TextInputType.visiblePassword,
//                  obscureText: isPassword,
//                  validator: (value) {
//                    if(value!.isEmpty) {
//                      return 'Password must be not empty';
//                    }
//                    return null;
//                  },
//
//                ),
//                SizedBox(height: 20,),
//                Container(
//                  width: double.infinity,
//                  height: 50,
//                  color: Colors.cyan,
//                  child: MaterialButton(
//                      onPressed: (){
//                        if(formKey.currentState!.validate()) {
//                          AlertDialog alertDialog = AlertDialog(
//                             title: Text('Email is: ' + emailController.text),
//                             content: Text('Password is: ' + passwordController.text),
//                          );
//                              showDialog(
//                                context: context,
//                                builder: (BuildContext context) {
//                                  return alertDialog;
//                                },
//                              );
//
//                        }
//
//
//                      },
//                      child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//                  ),
//                ),
//                SizedBox(height: 20,),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: [
//                    Text("Are you hav\'nt account? ",style: TextStyle(fontWeight: FontWeight.bold),),
//                    TextButton(
//                      onPressed: (){
//                      },
//                      child: Text("Register now",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
//                    ),
//                  ],
//                ),
//
//              ],
//            ),
//          ),
//        ),
//      );
//   }
// }