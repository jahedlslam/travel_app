import 'package:flutter/material.dart';

class TourPriceRow extends StatelessWidget {
  const TourPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Basic\ntour price",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade600,
                  fontSize: 14),
            ),
          ],
        ),
        const Text(
          "\$512",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        const Text("\$450",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        const Text("\$51",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
      ],
    );
  }
}
