import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/place_detail_2/components/timelinelist.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({super.key});

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  late PageController _pagecontroller;
  @override
  void initState() {
    _pagecontroller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      child: PageView(
        children: [
          Stack(
            children: [
              Positioned(
                left: 50,
                top: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 50,
                child: Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "DAY 1",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "May 20",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Ha Noi",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 12,
                            color: AppColors.primaryColor,
                          ),
                          const Text(
                            "Nogata",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                right: 30,
                left: 30,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                          width: 5,
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
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColors.primaryGrayColor,
                    size: 20,
                  ),
                ),
              ),
              const Positioned(
                top: 180,
                left: 40,
                right: 40,
                child: Column(
                  children: [
                    TimeLineList(
                      hour: "06",
                      min: "00",
                      caption:
                          "CAPI's guide picks you up at the meeting point of Noi Bai airport for a flight to Nagota.",
                    ),
                    TimeLineList(
                      hour: "09",
                      min: "30",
                      caption:
                          "Local car and guide pick up the delegation and take you to eat noon After that, the group returned to check in at a 4-star hotel.",
                    ),
                    TimeLineList(
                      hour: "12",
                      min: "30",
                      caption:
                          "Freetime \nPeople can go shopping, visit places near the hotel.",
                    ),
                    TimeLineList(
                      hour: "19",
                      min: "30",
                      caption:
                          "In the evening, after having dinner, the car will take you to enjoy the art performance Siam Niramit.",
                    ),
                    TimeLineList(
                      hour: "21",
                      min: "15",
                      caption:
                          "After the show, you return to the hotel to rest.",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                left: 50,
                top: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              const Positioned(
                top: 30,
                right: 50,
                child: Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DAY 1",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "May 20",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Ha Noi",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 12,
                            color: Colors.black,
                          ),
                          Text(
                            "Nogata",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                right: 30,
                left: 30,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                          width: 5,
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
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColors.primaryGrayColor,
                    size: 20,
                  ),
                ),
              ),
              const Positioned(
                top: 180,
                left: 40,
                right: 40,
                child: Column(
                  children: [
                    TimeLineList(
                      hour: "06",
                      min: "00",
                      caption:
                          "CAPI's guide picks you up at the meeting point of Noi Bai airport for a flight to Nagota.",
                    ),
                    TimeLineList(
                      hour: "09",
                      min: "30",
                      caption:
                          "Local car and guide pick up the delegation and take you to eat noon After that, the group returned to check in at a 4-star hotel.",
                    ),
                    TimeLineList(
                      hour: "12",
                      min: "30",
                      caption:
                          "Freetime \nPeople can go shopping, visit places near the hotel.",
                    ),
                    TimeLineList(
                      hour: "19",
                      min: "30",
                      caption:
                          "In the evening, after having dinner, the car will take you to enjoy the art performance Siam Niramit.",
                    ),
                    TimeLineList(
                      hour: "21",
                      min: "15",
                      caption:
                          "After the show, you return to the hotel to rest.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
