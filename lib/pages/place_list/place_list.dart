import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/placelist_model.dart';
import 'package:travel_app/pages/place_list/components/country_name_and_rating.dart';
import 'package:travel_app/pages/place_list/components/plane_takeoff.dart';
import 'package:travel_app/pages/place_list/components/right_section.dart';
import 'package:travel_app/pages/place_list/components/seats_remaining.dart';

class PlaceList extends StatelessWidget {
  final PlaceListModel data;
  const PlaceList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(35, 5, 15, 5),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: AppColors.primaryWhiteColor,
            boxShadow: [
              AppColors.praimaryPlaceListBoxShadow,
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CountryNameAndRating(data: data),
                    const SizedBox(
                      height: 5,
                    ),
                    PlaneTakeoff(data: data),
                    const SizedBox(
                      height: 10,
                    ),
                    SeatsRemaining(
                      data: data,
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: RightSection(data: data),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 15,
          bottom: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 96,
              child: Image.network(
                data.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
