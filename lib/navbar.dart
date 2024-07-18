import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login.dart';
import 'package:myapp/order.dart';
import 'package:myapp/promo.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Promo(),
    order(),
    Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 80, // Menambahkan tinggi pada BottomNavigationBar
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                _buildBottomNavigationBarItem('Home', 'images/Home.svg', 0),
                _buildBottomNavigationBarItem('Promos', 'images/Diskon.svg', 1),
                _buildBottomNavigationBarItem('Orders', 'images/Order.svg', 2),
                _buildBottomNavigationBarItem('Chat', 'images/Chat.svg', 3),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
          ),
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 4 * _selectedIndex,
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 4,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String label, String assetName, int index) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(
            top: 15.0), // Menambahkan jarak antara garis dan ikon
        child: SvgPicture.asset(
          assetName,
          colorFilter: ColorFilter.mode(
              _selectedIndex == index ? Colors.green : Colors.grey,
              BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }
}

void main() => runApp(MaterialApp(
      home: Navbar(),
    ));
