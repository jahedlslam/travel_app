import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class Picture1 extends StatelessWidget {
  final String image;
  const Picture1({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 275,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.secondaryIndicatorImageGradient,
        ),
      ),
    );
  }
}
