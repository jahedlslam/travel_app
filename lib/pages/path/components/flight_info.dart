import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/about/components/dotted_line.dart';
import 'package:travel_app/pages/path/components/return_time.dart';
import 'package:travel_app/pages/path/components/start_time.dart';

class FlightInfo extends StatelessWidget {
  const FlightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flight information",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(5),
          padding: const EdgeInsets.all(10),
          color: AppColors.primaryGrayColor,
          child: const SizedBox(
            height: 175,
            width: 327,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StartTime(),
                DottedLine(),
                ReturnTime(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
