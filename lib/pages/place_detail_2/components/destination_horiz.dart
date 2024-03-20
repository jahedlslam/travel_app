import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class DestinationHoriz extends StatelessWidget {
  final String imageUrl;
  final String date;
  final String placeName;
  final String location;
  const DestinationHoriz(
      {super.key,
      required this.imageUrl,
      required this.date,
      required this.placeName,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 190,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: AppColors.secondaryDestinationGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                date,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    placeName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                    color: AppColors.primaryWhiteColor,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
