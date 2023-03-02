import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../screens/catalog_screen.dart';
import '../screens/home_screen.dart';
import '../screens/product_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static List<Widget> screens = <Widget>[
    const HomeScreen(),
    const CatalogScreen(),
    const ProductScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Container(
          height: 97.h,
          width: 412.w,
          decoration: const BoxDecoration(
            color: CustomColors.navBar,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                icon: _selectedIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: CustomColors.backgroundColor,
                        size: 28,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        color: CustomColors.navColor,
                        size: 28,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                icon: _selectedIndex == 1
                    ? Image.asset(
                        'images/collect.png',
                        height: 32.w,
                        width: 32.w,
                        color: CustomColors.backgroundColor,
                      )
                    : Image.asset(
                        'images/icon.png',
                        height: 27.h,
                        width: 27.w,
                        color: CustomColors.navColor,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                icon: _selectedIndex == 2
                    ? const Icon(
                        Icons.shopping_bag,
                        color: CustomColors.backgroundColor,
                        size: 26,
                      )
                    : const Icon(
                        Icons.shopping_bag_outlined,
                        color: CustomColors.navColor,
                        size: 26,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                icon: _selectedIndex == 3
                    ? const Icon(
                        Icons.person,
                        color: CustomColors.backgroundColor,
                        size: 28,
                      )
                    : const Icon(
                        Icons.person_outline,
                        color: CustomColors.navColor,
                        size: 28,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
