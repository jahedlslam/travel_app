import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/place_detail_2/components/picture1.dart';
import 'package:travel_app/pages/place_detail_2/components/timeline.dart';
import 'package:travel_app/routes/app_routes.dart';

import 'destination_horiz.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  List<String> tabs = ["Introduction", "Path", "Review"];
  int current = 0;
  double changePositionedofLine() {
    switch (current) {
      case 0:
        return 10;
      case 1:
        return 165;
      case 2:
        return 247;
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
      case 2:
        return 60;
      default:
        return 0;
    }
  }

  void _timeline() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return const TimeLine();
        });
  }

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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {},
        label: const Row(
          children: [
            Text(
              "BOOK NOW",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: 1310,
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
                          dotColor: AppColors.secondaryGrayColor800,
                          dotHeight: 5,
                          dotWidth: 7,
                          spacing: 11),
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
                        top: 20,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryGrayColor800,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "06 days 16 hours",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        right: 0,
                        top: 65,
                        child: Container(
                          height: 35,
                          width: 73,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "-20%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 20,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Singapore",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 44,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 66,
                              height: 18,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  color: Colors.blue.shade100),
                              child: const Center(
                                child: Text(
                                  "Standard",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,
                                    size: 18,
                                    color: AppColors.primaryGrayColor),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "3 DAYS ( 20 ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 12,
                                  color: AppColors.primaryGrayColor,
                                  weight: 10,
                                ),
                                const Text(
                                  " 22 Mar 2019 )",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person_rounded,
                                    size: 18,
                                    color: AppColors.primaryGrayColor),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "14/16",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tour code: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "NNSGN5843-007-200719VN-H",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Text(
                                  "\$770",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Mulish',
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 230,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 10,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryGrayColor800,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 15)
                                            .floor(),
                                        (index) => SizedBox(
                                          width: 5,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: AppColors
                                                    .secondaryGrayColor800),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              width: 10,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryGrayColor800,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 260,
                        right: 0,
                        child: SizedBox(
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
                                            left: index == 0 ? 30 : 38,
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
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 310,
                        child: Divider(
                          color: AppColors.primaryGrayColor,
                        ),
                      ),
                      Positioned(
                        top: 340,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Destination",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 150,
                              width: 400,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: _timeline,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 25, right: 25.0),
                                      child: DestinationHoriz(
                                        imageUrl:
                                            "https://images.unsplash.com/photo-1560874047-8bc5a624784c?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        date: "May 20",
                                        placeName: "Ha Noi ",
                                        location: " Nogata",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: _timeline,
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 25.0),
                                      child: DestinationHoriz(
                                        imageUrl:
                                            "https://images.unsplash.com/photo-1560874047-8bc5a624784c?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        date: "May 21",
                                        placeName: "Ha Noi ",
                                        location: " Nogata",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, top: 20, bottom: 10),
                              child: Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: SizedBox(
                                height: 155,
                                width: 330,
                                child: Text(
                                  "Marina Bay Sands is an integrated resort fronting Marina Bay in Singapore and a landmark of the city. At its opening in 2010, it was deemed the world's most expensive standalone casino property at S\$8 billion (US\$6.88 billion).",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                height: 285,
                                width: 340,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://s.yimg.com/ny/api/res/1.2/OGVWcbso3kEhsrsk9_ablQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ4MA--/https://media.zenfs.com/en_SG/News/hardwarezone.com.sg/MBS_Map.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
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
