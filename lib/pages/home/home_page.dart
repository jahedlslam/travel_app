import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/home/components/custom_tab_bar.dart';
import 'package:travel_app/pages/home/components/head_section.dart';
import 'package:travel_app/pages/home/components/middle_section.dart';
import 'package:travel_app/pages/home/components/slider_section.dart';
import 'package:travel_app/pages/home/components/last_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: HeadSection(),
              ),
              SliderSection(),
              CustomTabBar(),
              MiddleSection(),
              LastSection(),
            ],
          ),
        ),
      ),
    );
  }
}
