import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class TakeOffTime extends StatelessWidget {
  const TakeOffTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/icons/takeoff-the-plane.png",
          width: 16,
          color: AppColors.primaryGrayColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "06.00 am",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Text(
              "May 20, 2024",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
