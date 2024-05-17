import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

import 'home_screen.dart';

class MainBottomNav extends StatefulWidget {
  const MainBottomNav({super.key});

  @override
  State<MainBottomNav> createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  final List<Widget> _screens = [const HomeScreen()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: _screens[_currentIndex],
      // body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: w * 0.023,
        selectedFontSize: w * 0.025,
        iconSize: w * 0.05,
        backgroundColor: Palette.backgroundColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'Users',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Invoice',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Palette.customColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
