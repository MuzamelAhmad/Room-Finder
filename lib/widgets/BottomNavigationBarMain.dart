import 'package:flutter/material.dart';
import 'package:room_finder/DashboardScreens/MainHomePage.dart';
import 'package:room_finder/DashboardScreens/SearchDetailPage.dart';

import '../DashboardScreens/Profile.dart';
import '../DashboardScreens/Setting.dart';

class BottomNavigationBarMain extends StatefulWidget {
  const BottomNavigationBarMain({super.key});

  @override
  State<BottomNavigationBarMain> createState() => _BottomNavigationBarMainState();
}

class _BottomNavigationBarMainState extends State<BottomNavigationBarMain> {
 int _currentIndex = 0;
List<Widget> body = const [

  MainHomePage(),
  SearchDetailPage(),
  Setting(),
  Profile(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: body[_currentIndex],

        ),
        bottomNavigationBar : BottomNavigationBar(
            unselectedItemColor: Colors.lightBlue,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            currentIndex : _currentIndex,
          onTap : (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
          }, items: const [
                BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "Setting",
                  icon: Icon(Icons.settings),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.person),
                ),

      ],
        ),
    );
  }
}
