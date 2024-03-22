import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({super.key});

  @override
  State<CustomBar> createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
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
    return SizedBox(
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
                            color:
                                current == index ? Colors.black : Colors.grey,
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
    );
  }
}
