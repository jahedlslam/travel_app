import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "LINTOUR",
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "TRAVEL TOUR BOOKING UI KIT",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
      ],
    );
  }
}
