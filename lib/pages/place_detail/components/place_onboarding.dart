import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/place_detail_model.dart';
import 'package:travel_app/pages/place_detail/components/caption.dart';
import 'package:travel_app/pages/place_detail/components/country_name.dart';
import 'package:travel_app/pages/place_detail/components/plane_takeoff.dart';
import 'package:travel_app/pages/place_detail/components/price_section.dart';
import 'package:travel_app/pages/place_detail/components/rating_and_review.dart';

class PlaceOnboarding extends StatelessWidget {
  final PlaceDetailModel data;
  const PlaceOnboarding({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: data.bgUrl,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(data.bgUrl), fit: BoxFit.cover),
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
                CountryName(data: data),
                const SizedBox(
                  height: 20,
                ),
                RatingAndReview(data: data),
                const SizedBox(
                  height: 10,
                ),
                PlaneTakeoff(data: data),
                const SizedBox(
                  height: 10,
                ),
                Caption(data: data),
                const SizedBox(
                  height: 20,
                ),
                PriceSection(data: data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
