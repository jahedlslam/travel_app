import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/placecard_model.dart';
import 'package:travel_app/pages/place_card/components/card_top_section.dart';
import 'package:travel_app/pages/place_card/components/country_name_and_rating.dart';
import 'package:travel_app/pages/place_card/components/plane_takeoff.dart';
import 'package:travel_app/pages/place_card/components/price.dart';
import 'package:travel_app/pages/place_card/components/seats.dart';

class PlaceCard extends StatelessWidget {
  final PlaceCardModel data;
  const PlaceCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 15, right: 5),
      child: Hero(
        transitionOnUserGestures: true,
        tag: data.bgImage,
        child: Container(
          height: 310,
          width: 235,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(data.bgImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              AppColors.praimaryBoxShadow,
            ],
          ),
          child: Container(
            height: 300,
            width: 235,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: AppColors.primarGradientColor,
            ),
            child: Stack(
              alignment: const Alignment(-1.1, 1.0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: TopSecCard(data: data),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 15, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CountryNameAndRating(data: data),
                          const SizedBox(
                            height: 10,
                          ),
                          PlaneTakeoff(data: data),
                          const SizedBox(
                            height: 10,
                          ),
                          Seats(data: data),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Price(data: data),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
