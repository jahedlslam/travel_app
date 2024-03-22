import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';

class CountryNameAndRating extends StatelessWidget {
  const CountryNameAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Singapore",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
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
      ],
    );
  }
}
