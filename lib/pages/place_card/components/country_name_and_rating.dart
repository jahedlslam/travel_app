import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../models/placecard_model.dart';

class CountryNameAndRating extends StatelessWidget {
  const CountryNameAndRating({
    super.key,
    required this.data,
  });

  final PlaceCardModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.countryName,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Mulish',
              fontSize: 22,
              fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 20,
        ),
        RatingBar.builder(
          initialRating: 4,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 15,
          unratedColor: Colors.white,
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
