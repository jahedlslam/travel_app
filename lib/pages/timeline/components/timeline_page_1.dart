import 'package:flutter/material.dart';
import 'package:travel_app/pages/timeline/components/day_and_location.dart';
import 'package:travel_app/pages/timeline/components/dotted_line.dart';
import 'package:travel_app/pages/timeline/components/time_and_caption.dart';
import '../../../constants/app_color.dart';

class TimelinePage1 extends StatelessWidget {
  const TimelinePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          child: DayAndLocation(
              day: "DAY 2",
              date: "May 21",
              city: "Ha Noi",
              country: "Singapore"),
        ),
        const Positioned(
          top: 150,
          right: 30,
          left: 30,
          child: DottedLine(),
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
          child: TimeAndCaption(),
        ),
      ],
    );
  }
}
