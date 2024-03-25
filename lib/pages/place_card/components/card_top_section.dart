import 'package:flutter/material.dart';
import 'package:travel_app/models/placecard_model.dart';
import '../../../constants/app_color.dart';

class TopSecCard extends StatelessWidget {
  final PlaceCardModel data;
  const TopSecCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 35,
          width: 150,
          decoration: BoxDecoration(
            color: AppColors.secondaryGrayColor800,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              '${data.date} days ${data.hours} hours ',
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 35,
          width: 73,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              data.discount.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
