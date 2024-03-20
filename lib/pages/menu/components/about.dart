import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.secondaryGrayColor800,
                size: 30,
              ),
            ),
          ),
          const Positioned(
            top: 110,
            left: 30,
            child: Text(
              "About",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 200,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LINTOUR",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "TRAVEL TOUR BOOKING UI KIT",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            right: 30,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                          width: 8,
                          height: 1,
                          child: DecoratedBox(
                            decoration:
                                BoxDecoration(color: Colors.grey.shade800),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "This is a music kit with the best interface designs. Color is a special attraction that expresses personality and modernity.",
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Package includes 50+ travel screens and works in Sketch, Figma & XD.",
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "You can completely edit the components easily.",
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
                ),
                const SizedBox(
                  height: 30,
                ),
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                          width: 8,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: AppColors.secondaryGrayColor800),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "CAPI CREATIVE",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "agency@capi.design",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "htttp//:wwwcapi.design",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
