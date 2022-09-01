import 'dart:ui';

import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/b7ar.png'),
              fit: BoxFit.fill,
              height: 900,
              width: 900,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 400.0,
                    height: 400.0,
                    color: Colors.black.withOpacity(.7),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
                          Center(
                            child: Text(
                              'Programe Teach',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Email',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration: InputDecoration(hintText: '  Enter Email'),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Password',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration:
                            InputDecoration(hintText: '  Enter password'),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: Color.fromARGB(255, 176, 39, 133),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextButton(

                            onPressed: () {},
                            child: Text(
                              'Forget Password ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80
                  ),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/account.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}