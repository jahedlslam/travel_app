import 'package:flutter/material.dart';
import 'package:travel_app/pages/review/components/review_with_rating.dart';
import '../../../constants/app_color.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 45, 20, 5),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryWhiteColor,
        boxShadow: [
          AppColors.praimaryMenuIconBoxShadow,
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const ReviewWithRating(),
    );
  }
}
