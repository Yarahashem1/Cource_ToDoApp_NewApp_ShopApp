import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/todo_app/cubit.dart';
// import '../../layout/todo_app/states.dart';
//
//
// class Archive extends StatelessWidget {
//   const Archive({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
//       listener: (BuildContext context, state) {},
//       builder: (BuildContext context, Object? state) {
//         var cubit = HomeLayoutCubit.get(context);
//         return ListView.separated(
//           itemBuilder: (context, index) =>
//               Dismissible(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         child: Text("${cubit.archivedTasks[index]["time"]}"),
//                         radius: 30,
//                         backgroundColor: Colors.blue,
//                       ),
//                       SizedBox(width: 15,),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("${cubit.archivedTasks[index]["title"]}",
//                               style: TextStyle(fontSize: 15),),
//                             Text("${cubit.archivedTasks[index]["date"]}",
//                               style: TextStyle(color: Colors.grey[300]),),
//                           ],
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: (){
//                           cubit.updateDataBase(status: "Done", id: cubit.archivedTasks[index]["id"]);
//                         },
//                         icon: Icon(Icons.check_circle,color: Colors.green,),
//                       ),
//                       IconButton(
//                         onPressed: (){
//                             cubit.updateDataBase(status: "Archive", id: cubit.archivedTasks[index]["id"]);
//                         },
//                         icon: Icon(Icons.archive_outlined,color: Colors.black26,),
//                       ),
//                     ],
//                   ),
//                 ),
//                 onDismissed: (direction) {
//                   cubit.deleteDataFromDatabase(id: cubit.archivedTasks[index]["id"]);
//                 },
//                 key: Key(cubit.archivedTasks[index]["id"].toString()),
//               ),
//           separatorBuilder: (context, index) =>
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Container(
//                     width: double.infinity,
//                     height: 1,
//                     color: Colors.grey),
//               ),
//           itemCount: HomeLayoutCubit
//               .get(context)
//               .archivedTasks
//               .length,
//         );
//       },
//     );
//   }
// }
