import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/support/components/bottom_section.dart';
import 'package:travel_app/pages/support/components/country_name_and_rating.dart';
import 'package:travel_app/pages/support/components/dotted_line.dart';
import 'package:travel_app/pages/support/components/image.dart';
import 'package:travel_app/pages/support/components/location_and_date.dart';
import 'package:travel_app/pages/support/components/page_view_image.dart';
import 'package:travel_app/pages/support/components/right_corner.dart';
import 'package:travel_app/pages/support/components/sending_msg_like.dart';
import 'package:travel_app/pages/support/components/title_and_subtitle.dart';
import 'package:travel_app/pages/support/components/top_section.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
          width: double.maxFinite,
          height: 770,
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
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 25,
                        top: 20,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TopImage(),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CountryNameAndRating(),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    LocationAndDate(),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: SizedBox(
                          height: 90,
                          child: RightCorner(),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        right: 0,
                        left: 0,
                        child: DottedLine(),
                      ),
                      Positioned(
                        top: 160,
                        right: 25,
                        left: 25,
                        child: TitleAndSubtitle(),
                      ),
                      Positioned(
                        bottom: 85,
                        left: 25,
                        child: SendingMsgLike(),
                      ),
                      Positioned(
                        bottom: 0,
                        child: BottomSection(),
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
