import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWrCmFb0_OHzqzYYyGpdcbfRmm0fUd43fIhsVqFzfVNdyhQxiUCG2_IIZ4FBh1vKzPj08&usqp=CAU"),
            ),
            SizedBox(width: 10,),
            Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
