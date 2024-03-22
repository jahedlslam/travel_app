import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/search_screen/components/search_field.dart';
import 'package:travel_app/pages/search_screen/components/search_history_text.dart';
import 'package:travel_app/pages/search_screen/components/search_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.secondaryGrayColor800,
                  size: 30,
                ),
              ),
            ),
            const Positioned(
              top: 90,
              left: 30,
              child: Text(
                "Search",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mulish',
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              top: 180,
              right: 30,
              left: 30,
              child: SearchField(),
            ),
            const Positioned(
              top: 250,
              right: 20,
              left: 20,
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: SearchText(),
              ),
            ),
            Positioned(
              top: 345,
              right: 0,
              left: 0,
              child: Divider(
                thickness: 2,
                color: AppColors.secondaryGrayColor,
              ),
            ),
            const Positioned(
              top: 370,
              left: 30,
              child: SearchHistoryText(),
            ),
          ],
        ),
      ),
    );
  }
}
