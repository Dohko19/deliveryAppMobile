import 'package:flutter/material.dart';
//tabs
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/tabs/explore_tab.dart';
import 'package:delivery_app/src/tabs/favourite_tab.dart';
import 'package:delivery_app/src/tabs/my_order_tab.dart';
import 'package:delivery_app/src/tabs/profile_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavouriteTab(),
    const ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _widgetChange(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _widgetChange,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'My order'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Favourite'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile'
          ),
        ]
    );
  }
}


