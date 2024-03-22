import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Filter",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Mulish',
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Using filter will help search more\naccurately!",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Mulish',
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
