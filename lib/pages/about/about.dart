import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/about/components/details.dart';
import 'package:travel_app/pages/about/components/dotted_line.dart';
import 'package:travel_app/pages/about/components/last_section.dart';
import 'package:travel_app/pages/about/components/title_and_subtitle.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
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
            top: 110,
            left: 30,
            child: Text(
              "About",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 200,
            left: 30,
            child: TitleAndSubtitle(),
          ),
          const Positioned(
            top: 280,
            right: 30,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedLine(),
                SizedBox(
                  height: 20,
                ),
                Details(),
                SizedBox(
                  height: 30,
                ),
                DottedLine(),
                SizedBox(
                  height: 30,
                ),
                LastSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
