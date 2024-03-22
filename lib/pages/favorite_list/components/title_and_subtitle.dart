import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 95,
          width: 330,
          child: Text(
            "Discover and save your favourite trip!",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w800),
          ),
        ),
        Text(
          "Please select 1 favorites list to add",
          style: TextStyle(
              color: Colors.grey.shade800, fontSize: 16, fontFamily: 'Mulish'),
        ),
      ],
    );
  }
}
