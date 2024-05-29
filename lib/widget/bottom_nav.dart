import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedItem;
  BottomNav({super.key, required this.selectedItem});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedNavbar = 0;
  void changeSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/news');
    } else if (index == 2){
      Navigator.pushNamed(context, '/profil');
    } 
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.house_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper_rounded),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: 'Profil',
        ),
        
      ],
      selectedItemColor: Color.fromARGB(255, 0, 6, 66),
      unselectedItemColor: Color.fromARGB(255, 92, 90, 96),
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
      );
    }
}