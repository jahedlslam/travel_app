import 'package:flutter/material.dart';

class AirportRow extends StatelessWidget {
  const AirportRow({
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
              "Airport fees",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade600,
                  fontSize: 14),
            ),
          ],
        ),
        const Text(
          "\$0",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        const Text("\$0",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        const Text("\$0",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
      ],
    );
  }
}
