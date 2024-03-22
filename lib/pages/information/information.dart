import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/information/components/about_section.dart';
import 'package:travel_app/pages/information/components/country_and_category.dart';
import 'package:travel_app/pages/information/components/custom_tab_bar.dart';
import 'package:travel_app/pages/information/components/destination_details.dart';
import 'package:travel_app/pages/information/components/discount_section.dart';
import 'package:travel_app/pages/information/components/dotted_line.dart';
import 'package:travel_app/pages/information/components/floating_button_label.dart';
import 'package:travel_app/pages/information/components/how_many_people.dart';
import 'package:travel_app/pages/information/components/lenght_of_stay.dart';
import 'package:travel_app/pages/information/components/page_indicator.dart';
import 'package:travel_app/pages/information/components/page_view_image.dart';
import 'package:travel_app/pages/information/components/tour_code.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {},
        label: const FloatingButtonLabel(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: 1310,
          child: Stack(
            children: [
              PageViewImage(controller: _controller),
              Positioned(
                top: 50,
                left: 10,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: AppColors.primaryWhiteColor,
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    PageIndicator(controller: _controller),
                  ],
                ),
              ),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 20,
                        right: 0,
                        child: DiscountSection(),
                      ),
                      const Positioned(
                        left: 25,
                        top: 20,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CountryAndCategory(),
                            SizedBox(
                              height: 15,
                            ),
                            LenghtOfStay(),
                            SizedBox(
                              height: 5,
                            ),
                            HowManyPeople(),
                            SizedBox(
                              height: 15,
                            ),
                            TourCode(),
                          ],
                        ),
                      ),
                      const Positioned(
                        right: 0,
                        left: 0,
                        top: 230,
                        child: DottedLine(),
                      ),
                      const Positioned(
                        left: 0,
                        top: 260,
                        right: 0,
                        child: CustomTabBar(),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 310,
                        child: Divider(
                          color: AppColors.primaryGrayColor,
                        ),
                      ),
                      const Positioned(
                        top: 340,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DestinationDetails(),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, top: 20, bottom: 10),
                              child: AboutSection(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
