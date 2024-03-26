import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../favorite_list_none/favorite_list_none.dart';
import '../information/information.dart';
import '../support/support.dart';

class PlaceDetailPage extends StatefulWidget {
  const PlaceDetailPage({super.key});

  @override
  State<PlaceDetailPage> createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
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
        backgroundColor: AppColors.secondaryBlackColor,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryWhiteColor,
        unselectedItemColor: AppColors.primaryGrayColor,
        unselectedIconTheme: IconThemeData(color: AppColors.primaryGrayColor),
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
