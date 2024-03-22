import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/favorite_list_none/components/button.dart';
import 'package:travel_app/pages/favorite_list_none/components/heading_caption.dart';
import 'package:travel_app/pages/favorite_list_none/components/middle_section.dart';
import 'package:travel_app/pages/favorite_list_none/components/page_view_image.dart';
import 'package:travel_app/pages/favorite_list_none/components/top_section.dart';

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
                      left: 15,
                      right: 15,
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
                    const Positioned(
                      left: 110,
                      top: 150,
                      child: MiddleSection(),
                    ),
                    const Positioned(
                      top: 410,
                      left: 20,
                      right: 20,
                      child: Button(),
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
