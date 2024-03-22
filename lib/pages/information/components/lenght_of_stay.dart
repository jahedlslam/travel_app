import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class LenghtOfStay extends StatelessWidget {
  const LenghtOfStay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.calendar_month, size: 18, color: AppColors.primaryGrayColor),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "3 DAYS ( 20 ",
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 12,
          color: AppColors.primaryGrayColor,
          weight: 10,
        ),
        const Text(
          " 22 Mar 2019 )",
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
