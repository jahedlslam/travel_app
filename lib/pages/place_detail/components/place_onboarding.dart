import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/place_detail_model.dart';

class PlaceOnboarding extends StatelessWidget {
  final PlaceDetailModel data;
  const PlaceOnboarding({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(data.bgUrl), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.secondaryIndicatorGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.countryName,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mulish',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
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
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Mulish'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 16,
                    width: 16,
                    child: Image.asset(
                      "assets/icons/takeoff-the-plane.png",
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Start: ${data.placeName} - ',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                        TextSpan(
                          text: '${data.month} ${data.date}, ${data.year}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 310,
                child: Text(
                  data.caption,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Mulish',
                      wordSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "\$${data.price}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text(
                      "per person",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Mulish'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
