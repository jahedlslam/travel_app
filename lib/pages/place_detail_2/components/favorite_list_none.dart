import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/place_detail_2/components/picture1.dart';

import '../../../routes/app_routes.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
      body: SizedBox(
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 20,
                      left: 15,
                      right: 15,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 85,
                            width: 330,
                            child: Text(
                              "Discover and save your favourite trip!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w800),
                            ),
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
                      left: 110,
                      top: 150,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 166,
                            width: 133,
                            child: Image.asset("assets/icons/luggage.png"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "No favorite trip list yet!",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Mulish'),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 410,
                      left: 20,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.favoriteTripList);
                        },
                        child: Container(
                          height: 46,
                          width: 344,
                          decoration:
                              BoxDecoration(color: AppColors.primaryColor),
                          child: const Center(
                            child: Text(
                              "CREATE A TRIP LIST",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
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
    );
  }
}
