import 'package:flutter/material.dart';
import 'package:travel_app/pages/my_tour/components/basic_price_bar.dart';
import 'package:travel_app/pages/my_tour/components/terms_required_bar.dart';
import '../../../constants/app_color.dart';

class CustomTourTabBar extends StatelessWidget {
  const CustomTourTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 350,
            child: TabBar(
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
              indicatorPadding: const EdgeInsets.only(right: 30),
              tabs: const [
                Tab(
                  text: "Basic price",
                ),
                Tab(
                  text: "Terms required",
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 1000,
            child: TabBarView(
              children: [
                BasicPriceBar(),
                TermsRequiredBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
