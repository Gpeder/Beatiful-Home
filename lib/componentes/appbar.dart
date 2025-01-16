import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final void Function(int value) onTap;

  const CustomAppBar({super.key, required this.onTap});

  @override
  State<CustomAppBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomAppBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      iconSize: 20,
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          widget.onTap(value);
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house),
              activeIcon: Icon(CupertinoIcons.house_fill),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark),
              activeIcon: Icon(CupertinoIcons.bookmark_fill),
              label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              activeIcon: Icon(CupertinoIcons.person_fill),
              label: 'Perfil'),
        ]);
  }
}
