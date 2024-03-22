import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class HowManyPeople extends StatelessWidget {
  const HowManyPeople({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.person_rounded, size: 18, color: AppColors.primaryGrayColor),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "14/16",
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
