import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/home/components/head_section.dart';
import 'package:travel_app/pages/home/components/last_section.dart';
import 'package:travel_app/pages/home/components/menu_icon.dart';
import '../../models/placelist_model.dart';
import 'components/place_list.dart';
import 'components/search_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabs = [
    "Favorite",
    "New",
  ];
  int current = 0;
  double changePositionedofLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 100;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 60;
      case 1:
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SearchBox(),
                    SizedBox(
                      width: 10,
                    ),
                    MenuIcon(),
                  ],
                ),
              ),
              const HeadSection(),
              middleSection(size),
              const LastSection(),
            ],
          ),
        ),
      ),
    );
  }

  Column middleSection(Size size) {
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.05,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
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
                          setState(() {
                            current = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 20 : 22,
                            top: 5,
                          ),
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                color: current == index
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: current == index ? 25 : 22,
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
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView.builder(
            itemCount: placeList.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: PlaceList(data: placeList[index]),
              );
            },
          ),
          //child: (Text("${tabs[0]} tab content"),
          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     GestureDetector(
          //       onTap: () {
          //         // Navigator.pushNamed(
          //         //     context, AppRoutes.placeDetail);
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.only(top: 10.0),
          //         child: PlaceList(data: placeList[0]),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         // Navigator.pushNamed(
          //         //     context, AppRoutes.placeDetail);
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.only(top: 10.0),
          //         child: PlaceList(data: placeList[1]),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         // Navigator.pushNamed(
          //         //     context, AppRoutes.placeDetail);
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.only(top: 10.0),
          //         child: PlaceList(data: placeList[2]),
          //       ),
          //     ),
          //  ],
          // ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 280,
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "VIEW ALL-",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}


/**
           Expanded(
                      child: ListView.builder(
                        itemCount: placeList.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return PlaceList(data: placeList[index]);
                        },
                      ),
                    ), */
                    /**
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: discoverySection.length,
                      itemBuilder: (context, index) {
                        return DiscoverySection(
                          data: discoverySection[index],
                        );
                      },
                    ),
                  ), */