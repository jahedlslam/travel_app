import 'package:flutter/material.dart';

class HeadingCaption extends StatelessWidget {
  const HeadingCaption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 85,
          width: 330,
          child: Text(
            "Discover and save your favourite trip!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w800),
          ),
        ),
      ],
    );
  }
}
