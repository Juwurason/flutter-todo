import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/pages/profile_page.dart';
import 'package:todo/pages/setting_page.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   // this keeps track of the current page
   int _selectedIndex = 0;

   void _navigateBottomBar(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

  final List _pages = [
    // homepage
    // HomePage(),
    // profilepage
    ProfilePage(),

    // settingpage
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: const [
            //home
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.home),
            //   label: 'Home'
            // ),

            //profile
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),

            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'
            ),
          ]),
    );
  }
}
