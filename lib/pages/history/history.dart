import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/history/components/last_section.dart';
import 'package:travel_app/pages/history/components/middle_section.dart';
import 'package:travel_app/pages/history/components/search_bar.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: 1000,
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
                    "History",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  top: 160,
                  left: 30,
                  right: 30,
                  child: HistorySearchBar(),
                ),
                const Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: MiddleSection(),
                ),
                const Positioned(
                  top: 450,
                  left: 0,
                  right: 0,
                  child: LastSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
