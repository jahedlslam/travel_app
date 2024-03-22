import 'package:flutter/material.dart';

class TourCode extends StatelessWidget {
  const TourCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tour code: ",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "NNSGN5843-007-200719VN-H",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          width: 90,
        ),
        Text(
          "\$770",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w800,
              fontFamily: 'Mulish',
              fontSize: 20),
        ),
      ],
    );
  }
}
