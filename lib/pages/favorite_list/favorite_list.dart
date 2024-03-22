import 'package:flutter/material.dart';
import 'package:travel_app/models/tirp_list_model.dart';
import 'package:travel_app/pages/favorite_list/components/floating_button_label.dart';
import 'package:travel_app/pages/favorite_list/components/page_view_image.dart';
import 'package:travel_app/pages/favorite_list/components/title_and_subtitle.dart';
import 'package:travel_app/pages/favorite_list/components/top_section.dart';
import 'package:travel_app/pages/favorite_trip/components/trip_list.dart';
import '../../constants/app_color.dart';
import '../../routes/app_routes.dart';

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
        label: const FloatingButtonLabel(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1390,
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
                        top: 30,
                        left: 25,
                        child: TitleAndSubtitle(),
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
