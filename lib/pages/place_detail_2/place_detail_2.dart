import 'package:flutter/material.dart';
import 'components/favorite_list_none.dart';
import 'components/information.dart';
import 'components/support.dart';

class PlaceDetail2 extends StatefulWidget {
  const PlaceDetail2({super.key});

  @override
  State<PlaceDetail2> createState() => _PlaceDetail2State();
}

class _PlaceDetail2State extends State<PlaceDetail2> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const Information(),
    const Favorite(),
    const Support(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.view_array,
              ),
              label: "Info"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: "Support"),
        ],
      ),
    );
  }
}
