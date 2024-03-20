import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/tirp_list_model.dart';

class TripList extends StatelessWidget {
  final TripListModel data;
  const TripList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryWhiteColor,
        boxShadow: [
          AppColors.praimaryTriplistBoxShadow,
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 100,
              height: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 87,
            width: 186,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data.countryName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  data.tours,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                  ),
                ),
                Text(
                  data.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
