import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: AppColors.primaryGrayColor)),
    );
  }
}
