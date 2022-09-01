// import 'package:conditional_builder/conditional_builder.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:untitled1/layout/todo_app/states.dart';
// import 'cubit.dart';
//
// class HomeLayout extends StatelessWidget {
//   var formSaffold = GlobalKey<ScaffoldState>();
//   var titleController = TextEditingController();
//   var dateController = TextEditingController();
//   var timeController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) =>
//       HomeLayoutCubit()
//         ..createDatabase(),
//       child: BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
//         listener: (context, state) {
//           if (state is HomeLayoutInsertDataBaseState) {
//             Navigator.pop(context);
//             titleController.clear();
//             timeController.clear();
//             dateController.clear();
//           }
//         },
//         builder: (context, state) {
//           HomeLayoutCubit cubit = HomeLayoutCubit.get(context);
//           return Scaffold(
//             key: formSaffold,
//             floatingActionButton: FloatingActionButton(
//               mini: true,
//               child: Icon(cubit.icon),
//               onPressed: () {
//                 if (cubit.isShow) {
//                   if (formKey.currentState!.validate()) {
//                     cubit.insertIntoDatabase(
//                       title: titleController.text,
//                       date: dateController.text,
//                       time: timeController.text,
//                     );
//                   }
//                 }
//                 else {
//                   formSaffold.currentState!.showBottomSheet((context) {
//                     return Container(
//                       padding: EdgeInsets.all(20),
//                       width: double.infinity,
//                       //height: 320,
//                       color: Colors.black26,
//                       child: Form(
//                         key: formKey,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             TextFormField(
//                               controller: titleController,
//                               keyboardType: TextInputType.text,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 labelText: "Title",
//                                 prefixIcon: Icon(Icons.title),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty)
//                                   return 'Title must be not empty';
//                                 return null;
//                               },
//                             ),
//                             SizedBox(height: 10,),
//                             TextFormField(
//                               onTap: () {
//                                 showTimePicker(
//                                     context: context,
//                                     initialTime: TimeOfDay.now()).then((value) {
//                                   timeController.text =
//                                       value!.format(context).toString();
//                                 });
//                               },
//                               controller: timeController,
//                               keyboardType: TextInputType.datetime,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 labelText: "Time",
//                                 prefixIcon: Icon(Icons.access_time_outlined),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty)
//                                   return 'Time must be not empty';
//                                 return null;
//                               },
//                             ),
//                             SizedBox(height: 10,),
//                             TextFormField(
//                               onTap: () {
//                                 showDatePicker(context: context,
//                                   initialDate: DateTime.now(),
//                                   firstDate: DateTime.now(),
//                                   lastDate: DateTime.parse('2022-12-12'),
//                                 ).then((value) {
//                                   dateController.text =
//                                       DateFormat.yMMMd()
//                                           .format(value!)
//                                           .toString();
//                                 });
//                               },
//                               controller: dateController,
//                               keyboardType: TextInputType.datetime,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 labelText: "Date",
//                                 prefixIcon: Icon(Icons.date_range_outlined),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty)
//                                   return 'Date must be not empty';
//                                 return null;
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }).closed.then((value) {
//                     cubit.changeBottomSheet(
//                         iconSheet: Icons.edit, isShowBottomSheet: false);
//                   });
//                   cubit.changeBottomSheet(
//                       iconSheet: Icons.add, isShowBottomSheet: true);
//                 }
//               },
//             ),
//             appBar: AppBar(
//               title: Text(cubit.Titles[cubit.current]),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//               currentIndex: cubit.current,
//               onTap: (index) {
//                 cubit.HomeLayoutBottomNav(index);
//               },
//               items: [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.menu),
//                   label: "Tasks",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.check_circle_outline),
//                   label: "Done",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.archive_outlined),
//                   label: "Archived",
//                 ),
//               ],
//             ),
//             body: ConditionalBuilder(
//               condition: state is! HomeLayoutGetDataBaseLoadingState,
//               builder: (context) => cubit.Screens[cubit.current],
//               fallback: (context) =>
//                   Center(
//                     child: CircularProgressIndicator(),
//                   ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
