import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final ValueChanged<int> onItemTapped;
  final int selectedIndex;

  Navbar({required this.onItemTapped, required this.selectedIndex});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          label: 'Promos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: widget.onItemTapped,
    );
  }
}
