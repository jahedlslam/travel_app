import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/place_detail_2/components/trip_list.dart';

import '../../../models/tirp_list_model.dart';

class FavoriteListNotification extends StatefulWidget {
  const FavoriteListNotification({super.key});

  @override
  State<FavoriteListNotification> createState() =>
      _FavoriteListNotificationState();
}

class _FavoriteListNotificationState extends State<FavoriteListNotification> {
  List<String> tabs = [
    "Notification",
  ];
  int current = 0;
  double changePositionedofLine() {
    switch (current) {
      case 0:
        return 5;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 60;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      body: SizedBox(
        child: Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 165,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryWhiteColor,
              boxShadow: [
                AppColors.praimaryNotificationBoxShadow,
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: AppColors.secondaryGrayColor800,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 40,
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.height * 0.05,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              child: SizedBox(
                                width: size.width,
                                height: size.height * 0.04,
                                child: ListView.builder(
                                  itemCount: tabs.length,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            current = index;
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: index == 0 ? 25 : 25,
                                          top: 2,
                                        ),
                                        child: Text(
                                          tabs[index],
                                          style: TextStyle(
                                              color: current == index
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize:
                                                  current == index ? 25 : 22,
                                              fontWeight: current == index
                                                  ? FontWeight.w800
                                                  : FontWeight.w600),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              left: changePositionedofLine(),
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 800),
                              bottom: 0,
                              child: AnimatedContainer(
                                curve: Curves.fastLinearToSlowEaseIn,
                                margin: const EdgeInsets.only(left: 20),
                                duration: const Duration(milliseconds: 800),
                                width: changeContainerWidth(),
                                height: size.height * 0.005,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Added ",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16,
                                    fontFamily: 'Mulish')),
                            TextSpan(
                                text: ' "Nagoya & Tokyo" ',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 16,
                                    fontFamily: 'Mulish')),
                            TextSpan(
                              text: 'to the',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16,
                                  fontFamily: 'Mulish'),
                            ),
                            TextSpan(
                              text: ' JAPAN ',
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 16,
                                  fontFamily: 'Mulish'),
                            ),
                            TextSpan(
                              text: 'list.',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16,
                                  fontFamily: 'Mulish'),
                            ),
                          ],
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
      ),
    );
  }
}
