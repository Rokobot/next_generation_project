import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:next_generation/Screens/ChoicesScreen.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Kitablar.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/MapScreen.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Neticeler.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexItem = 0;

  Widget _getBody(){
    switch (indexItem){
      case 0:
        return ChoicesScreen();
      case 1:
        return MapScreen();
      case 2:
        return Neticeler();
      case 3:
        return Kitablar();
    }
    return Container();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0XFF33384a),
        color: Color(0XFF0F1323),
        animationCurve: Curves.easeInOut,
        items: <Widget>[
          Icon(Icons.school, size: 30),
          Icon(Icons.map, size: 30),
          Icon(Icons.people, size: 30),
          Icon(Icons.sell, size: 30),
        ],
        onTap: (index) {
          setState(() {
            indexItem = index;
          });
        },
      ),
    );
  }
}
// CurvedNavigationBar(
// // selectedItemColor: Colors.blue,
// // unselectedItemColor: Colors.white,
// // showSelectedLabels: true,
// // showUnselectedLabels: true,
// // currentIndex: indexItem,
// color: Colors.black,
// onTap: (int index){
// setState(() {
// //indexItem = index;
// });
// },
// items: [
// Icon(Icons.add, size: 30),
// Icon(Icons.list, size: 30),
// Icon(Icons.compare_arrows, size: 30),
// Icon(Icons.compare_arrows, size: 30),
//
// // BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Məlumat'),
// // BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Məkan'),
// // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Nəticələr'),
// // BottomNavigationBarItem(icon: Icon(Icons.sell), label: 'Satış'),
// ],
// ),