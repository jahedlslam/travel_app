import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';

class ReviewWithRating extends StatelessWidget {
  const ReviewWithRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(80, 10, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Minh Le",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mulish'),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(),
                    hintText: "Enter your review",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        color: AppColors.secondaryGrayColor500),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.secondaryGrayColor,
        ),
        const Text(
          "How is your experience?",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        const SizedBox(
          height: 10,
        ),
        RatingBar.builder(
          initialRating: 5,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 35,
          unratedColor: Colors.grey,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star_border_sharp,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
