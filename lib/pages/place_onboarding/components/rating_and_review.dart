import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';
import '../../../models/place_detail_model.dart';

class RatingAndReview extends StatelessWidget {
  const RatingAndReview({
    super.key,
    required this.data,
  });

  final PlaceDetailModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
          width: 10,
        ),
        Text(
          '( ${data.review} review )',
          style: const TextStyle(
              fontSize: 12, color: Colors.white, fontFamily: 'Mulish'),
        ),
      ],
    );
  }
}
