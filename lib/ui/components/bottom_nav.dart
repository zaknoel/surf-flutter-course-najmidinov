import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  const BottomNavBar({this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: Color(0xff252849),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.list), label: 'Список интересных мест'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Хочу посетить /Посещенные места'),
      ],
    );
  }
}
