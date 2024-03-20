import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/models/tirp_list_model.dart';
import 'package:travel_app/pages/place_detail_2/components/picture1.dart';
import 'package:travel_app/pages/place_detail_2/components/trip_list.dart';

import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.favoriteListNotification);
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "CREATE A TRIP LIST",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1390,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.viewImage);
                },
                child: PageView(
                  controller: _controller,
                  onPageChanged: (value) {},
                  children: const [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Picture1(
                        image:
                            "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Picture1(
                        image:
                            "https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Picture1(
                        image:
                            "https://images.unsplash.com/photo-1552415274-73ad7198cb93?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                  ],
                ),
              ),
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
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryWhiteColor,
                        dotColor: AppColors.secondaryGrayColor400,
                        dotHeight: 5,
                        dotWidth: 7,
                        spacing: 11,
                      ),
                    ),
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
                      Positioned(
                        top: 30,
                        left: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 95,
                              width: 330,
                              child: Text(
                                "Discover and save your favourite trip!",
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    color: Colors.black,
                                    fontSize: 36,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Text(
                              "Please select 1 favorites list to add",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 16,
                                  fontFamily: 'Mulish'),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Icon(
                          Icons.close,
                          color: AppColors.primaryGrayColor,
                        ),
                      ),
                      Positioned(
                        top: 145,
                        left: 25,
                        right: 25,
                        child: SizedBox(
                          width: double.infinity,
                          height: 1000,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: tripList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: TripList(data: tripList[index]),
                              );
                            },
                          ),
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
