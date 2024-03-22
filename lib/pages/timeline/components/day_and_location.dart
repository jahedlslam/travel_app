// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class DayAndLocation extends StatelessWidget {
  final String day;
  final String date;
  final String city;
  final String country;
  const DayAndLocation({
    Key? key,
    required this.day,
    required this.date,
    required this.city,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        ),
        Text(
          date,
          style: const TextStyle(
              color: Colors.black,
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
              city,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
              color: AppColors.primaryColor,
            ),
            Text(
              country,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
