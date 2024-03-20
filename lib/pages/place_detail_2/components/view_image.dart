import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/pages/place_detail_2/components/picture1.dart';

import '../../../constants/app_color.dart';

class ViewImage extends StatefulWidget {
  const ViewImage({super.key});

  @override
  State<ViewImage> createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
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
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(color: AppColors.primaryGrayColor),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (value) {},
              children: const [
                Align(
                  alignment: Alignment.center,
                  child: Picture1(
                    image:
                        "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Picture1(
                    image:
                        "https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Picture1(
                    image:
                        "https://images.unsplash.com/photo-1552415274-73ad7198cb93?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
