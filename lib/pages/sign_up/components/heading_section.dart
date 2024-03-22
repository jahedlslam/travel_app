import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            "Sign up",
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Mulish',
            ),
          ),
        ),
      ],
    );
  }
}
