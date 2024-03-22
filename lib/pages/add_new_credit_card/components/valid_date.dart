import 'package:flutter/material.dart';

class ValidDate extends StatelessWidget {
  const ValidDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "VALID THRU",
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "03/2024",
          style: TextStyle(
              fontFamily: 'KodeMono', color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}
