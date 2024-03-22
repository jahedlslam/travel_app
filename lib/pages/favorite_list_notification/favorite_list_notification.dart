import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/favorite_list_notification/components/custom_bar.dart';
import 'package:travel_app/pages/favorite_list_notification/components/text_message.dart';
import 'package:travel_app/pages/favorite_trip/components/trip_list.dart';
import '../../models/tirp_list_model.dart';

class FavoriteListNotification extends StatefulWidget {
  const FavoriteListNotification({super.key});

  @override
  State<FavoriteListNotification> createState() =>
      _FavoriteListNotificationState();
}

class _FavoriteListNotificationState extends State<FavoriteListNotification> {
  @override
  Widget build(BuildContext context) {
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
                const Positioned(
                  left: 0,
                  top: 40,
                  child: Column(
                    children: [
                      CustomBar(),
                      SizedBox(
                        height: 30,
                      ),
                      TextMessage(),
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
