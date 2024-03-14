import 'package:flutter/material.dart';
import 'package:travel_app/models/discovery_section_model.dart';
import 'package:travel_app/models/placecard_model.dart';
import 'package:travel_app/routes/app_routes.dart';
import '../../models/placelist_model.dart';
import 'components/discovery_section.dart';
import 'components/place_card.dart';
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
      backgroundColor: Colors.white,
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
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Ondue",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              SizedBox(
                height: 310,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.placeDetail);
                      },
                      child: PlaceCard(
                        data: placeCard[0],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.placeDetail);
                      },
                      child: PlaceCard(
                        data: placeCard[1],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.placeDetail);
                      },
                      child: PlaceCard(
                        data: placeCard[2],
                      ),
                    ),
                  ],
                ),

                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: placeCardlist.length,
                //   itemBuilder: (context, index) {
                //     return InkWell(
                //         onTap: () {
                //           Navigator.pushNamed(context, AppRoutes.placeDetail);
                //         },
                //         child: PlaceCard(data: placeCardlist[index]));
                //   },
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
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              Column(
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
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: //Text("${tabs[current]} tab content"),
                        Expanded(
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
                    ),
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
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Discovery",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Mulish'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.discoveryAsia);
                          },
                          child: DiscoverySection(
                            data: discoverySection[0],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.discoveryEurope);
                          },
                          child: DiscoverySection(
                            data: discoverySection[1],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.discoveryAmerica);
                          },
                          child: DiscoverySection(
                            data: discoverySection[2],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.menu);
      },
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 5),
          ],
        ),
        child: const Icon(
          Icons.sort_rounded,
          color: Colors.black,
        ),
      ),
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