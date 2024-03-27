import 'package:flutter/material.dart';
import 'package:travel_app/pages/path/components/flight_info.dart';
import 'package:travel_app/pages/path/components/hotel_info.dart';
import 'package:travel_app/pages/path/components/tour_guide.dart';

class PathTab extends StatelessWidget {
  const PathTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlightInfo(),
          SizedBox(
            height: 30,
          ),
          HotelInfo(),
          SizedBox(
            height: 30,
          ),
          TourGuide(),
        ],
      ),
    );
  }
}
