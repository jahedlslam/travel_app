import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';

class CustomersReview extends StatelessWidget {
  const CustomersReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Customer's review",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            RatingBar.builder(
              initialRating: 3.5,
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
              '( 4120 review )',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontFamily: 'Mulish'),
            ),
          ],
        ),
      ],
    );
  }
}
