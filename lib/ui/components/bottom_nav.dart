import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  const BottomNavBar({this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).canvasColor,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: 'Список интересных мест'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Хочу посетить /Посещенные места'),
        ],
      ),
    );
  }
}
