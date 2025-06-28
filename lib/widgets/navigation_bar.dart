import 'package:flutter/material.dart';
import 'package:finalhemocycle/pages/About_Us.dart';
import 'package:finalhemocycle/pages/homepage.dart';
import 'package:finalhemocycle/pages/profile_page.dart';

class NavigationController extends StatefulWidget {


  NavigationController({super.key});

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  int _selectedIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomePage(),
      ProfilePage(),
      AboutUsPage(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white70,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'About Us'),
        ],
      ),
    );
  }
}
