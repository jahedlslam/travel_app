import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/path/components/code_number.dart';
import 'package:travel_app/pages/path/components/landing_time.dart';
import 'package:travel_app/pages/path/components/take_off_time.dart';

class FlightTimeSection extends StatelessWidget {
  const FlightTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TakeOffTime(),
          VerticalDivider(
            thickness: 1,
            color: AppColors.primaryGrayColor,
          ),
          const LandingTime(),
          VerticalDivider(
            thickness: 1,
            color: AppColors.primaryGrayColor,
          ),
          const CodeNumber()
        ],
      ),
    );
  }
}
