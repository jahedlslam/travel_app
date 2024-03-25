import 'package:flutter/material.dart';

class LastSection extends StatelessWidget {
  const LastSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CAPI CREATIVE",
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "agency@capi.design",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "htttp//:wwwcapi.design",
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
