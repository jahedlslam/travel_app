import 'package:flutter/material.dart';
import 'package:travel_app/pages/my_tour/components/custom_tab_bar.dart';
import 'package:travel_app/pages/my_tour/components/floating_button_label.dart';
import 'package:travel_app/routes/app_routes.dart';
import '../../constants/app_color.dart';

class MyTour extends StatefulWidget {
  const MyTour({super.key});

  @override
  State<MyTour> createState() => _MyTourState();
}

class _MyTourState extends State<MyTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.bookingProcessingTabs);
        },
        label: const FloatingButtonLabel(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1100,
          width: double.infinity,
          child: Stack(
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
                child: Column(
                  children: [
                    Text(
                      "My tour",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Mulish',
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 180,
                left: 0,
                right: 0,
                child: CustomTourTabBar(),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 0,
                child: Divider(
                  color: AppColors.primaryGrayColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
