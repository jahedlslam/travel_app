import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';

class CustomerReviewRating extends StatelessWidget {
  final String name;
  final String comment;
  final String time;
  const CustomerReviewRating({
    super.key,
    required this.name,
    required this.comment,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 45, 20, 5),
      height: 96,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryWhiteColor,
        boxShadow: [
          AppColors.praimaryMenuIconBoxShadow,
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(70, 10, 15, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mulish'),
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      unratedColor: AppColors.primaryGrayColor,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      comment,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          color: AppColors.secondaryGrayColor800),
                    )
                  ],
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      color: AppColors.secondaryGrayColor500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
