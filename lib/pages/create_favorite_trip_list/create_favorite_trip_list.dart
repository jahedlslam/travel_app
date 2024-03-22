import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/cancel_button.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/create_button.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/description_section.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/heading_caption.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/name_section.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/page_view_image.dart';
import 'package:travel_app/pages/create_favorite_trip_list/components/top_section.dart';

class FavoriteTripList extends StatefulWidget {
  const FavoriteTripList({super.key});

  @override
  State<FavoriteTripList> createState() => _FavoriteTripListState();
}

class _FavoriteTripListState extends State<FavoriteTripList> {
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 830,
          width: double.infinity,
          child: Stack(
            children: [
              PageViewImage(controller: _controller),
              Positioned(
                top: 50,
                left: 10,
                child: TopSection(controller: _controller),
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
                        left: 25,
                        child: HeadingCaption(),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Icon(
                          Icons.close,
                          color: AppColors.primaryGrayColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: 380,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameSection(),
                    DescriptionSection(),
                  ],
                ),
              ),
              const Positioned(
                bottom: 40,
                left: 30,
                right: 30,
                child: Row(
                  children: [
                    CancelButton(),
                    SizedBox(
                      width: 20,
                    ),
                    CreateButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
