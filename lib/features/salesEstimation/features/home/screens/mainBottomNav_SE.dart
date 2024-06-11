import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme.dart';
import '../../invoice/invoice_SE.dart';
import '../../profile/profile_SE.dart';
import '../../users/users_screenSE.dart';
import 'home_screenSE.dart';

class MainBottomNavSE extends StatefulWidget {
  const MainBottomNavSE({super.key});

  @override
  State<MainBottomNavSE> createState() => _MainBottomNavSEState();
}

class _MainBottomNavSEState extends State<MainBottomNavSE> {
  final List<Widget> _screens = [
    const HomeScreenSE(),
    UsersScreenSE(),
    InvoiceScreenSE(),
    const ProfileScreenSE()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: w * 0.02,
        selectedFontSize: w * 0.025,
        iconSize: w * 0.06,
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
