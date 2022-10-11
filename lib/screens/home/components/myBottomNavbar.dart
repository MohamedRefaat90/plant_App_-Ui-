import 'package:flutter/material.dart';

import '../../../constans.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  _MyBottomNavbarState createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: cindex,
        onTap: (index) {
          setState(() => cindex = index);
        },
        elevation: 50,
        selectedItemColor: kPrimaryColor,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(label: '', icon: Icon(Icons.spa_outlined)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.person_outlined)),
        ]);
  }
}
