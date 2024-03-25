import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
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
    return SizedBox(
      child: Column(
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
          Container(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${tabs[current]} tab content"),
            ),
          ),
        ],
      ),
    );
  }
}
// Text("${tabs[current]} tab content"),