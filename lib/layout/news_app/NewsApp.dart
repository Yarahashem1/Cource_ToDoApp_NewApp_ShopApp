// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled1/layout/news_app/states.dart';
// import '../../modules/Search/Search.dart';
// import '../../shared/components/components.dart';
// import '../todo_app/cubit.dart';
// import 'cubit.dart';
//
// class NewsLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<NewsCubit, NewsStates>(
//       listener: (context, state) {},
//       builder: (context, state)
//       {
//         var cubit = NewsCubit.get(context);
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'News App',
//             ),
//             actions: [
//               IconButton(
//                 icon: Icon(
//                   Icons.search,
//                 ),
//                 onPressed: ()
//                 {
//                   navigateTo(context, SearchScreen(),);
//                 },
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.brightness_4_outlined,
//                 ),
//                 onPressed: ()
//                 {
//                   HomeLayoutCubit.get(context).changeAppMode();
//                 },
//               ),
//             ],
//           ),
//           body: cubit.screens[cubit.currentIndex],
//           bottomNavigationBar: BottomNavigationBar(
//             currentIndex: cubit.currentIndex,
//             onTap: (index) {
//               cubit.changeBottomNavBar(index);
//             },
//             items: cubit.bottomItems,
//           ),
//         );
//       },
//     );
//   }
// }