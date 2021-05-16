import 'package:flutter/material.dart';
import 'package:places/ui/components/svg_loader.dart';

class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  const BottomNavBar({this.selectedIndex});
  Color getColor(selected, current, BuildContext context) {
    return selected == current
        ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
        : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
  }

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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: svgLoader(
              'list',
              'List',
              getColor(selectedIndex, 0, context),
            ),
            label: 'Main list',
          ),
          BottomNavigationBarItem(
            icon: svgLoader(
              'map',
              'Map',
              getColor(selectedIndex, 1, context),
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: svgLoader(
              'heart_full',
              'Wishlist',
              getColor(selectedIndex, 2, context),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: svgLoader(
              'settings',
              'Settings',
              getColor(selectedIndex, 3, context),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
