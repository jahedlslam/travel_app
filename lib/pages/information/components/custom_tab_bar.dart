import 'package:flutter/material.dart';
import 'package:travel_app/pages/introduction/indroduction_tab.dart';
import 'package:travel_app/pages/path/path_tab.dart';
import 'package:travel_app/pages/review/review_tab.dart';
import '../../../constants/app_color.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
            width: double.infinity,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20),
              labelColor: AppColors.primaryColor,
              labelStyle: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              unselectedLabelColor: AppColors.primaryGrayColor,
              indicatorColor: AppColors.primaryColor,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: const EdgeInsets.only(right: 15),
              tabs: const [
                Tab(text: "Introduction"),
                Tab(text: "Path"),
                Tab(
                  text: "Review",
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 1000,
            child: TabBarView(
              children: [
                IntroductionTab(),
                PathTab(),
                ReviewTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
