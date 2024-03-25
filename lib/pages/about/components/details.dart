import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "This is a music kit with the best interface designs. Color is a special attraction that expresses personality and modernity.",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Package includes 50+ travel screens and works in Sketch, Figma & XD.",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "You can completely edit the components easily.",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontFamily: 'Mulish'),
        ),
      ],
    );
  }
}
