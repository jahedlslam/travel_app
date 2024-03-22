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
          "Hi, Capi",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Thank you for your interest in our service. Please send us any questions you may have.",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ],
    );
  }
}
