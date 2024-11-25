import 'package:flutter/material.dart';
import 'package:todo/pages/first_page.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/setting_page.dart';
import 'package:todo/pages/todo_page.dart';

void main() async {
  runApp(const MyApp());
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const TodoPage(),
//       theme: ThemeData(primarySwatch: Colors.yellow),
//       // routes: {
//       //   '/home' :(context) => HomePage(),
//       //   '/setting' :(context) => const SettingPage(),
//       // },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoPage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow, // Default primary color
        scaffoldBackgroundColor: Colors.yellow.shade50, // Optional background color
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow, // Default AppBar color
          foregroundColor: Colors.white, // Text and Icon color in AppBar
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow, // FAB color
        ),
      ),
    );
  }
}

