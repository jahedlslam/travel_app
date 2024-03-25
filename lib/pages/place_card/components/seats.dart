import 'package:flutter/material.dart';
import '../../../models/placecard_model.dart';

class Seats extends StatelessWidget {
  const Seats({
    super.key,
    required this.data,
  });

  final PlaceCardModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 14,
            width: 14,
            child: Image.asset(
              "assets/icons/label.png",
              color: Colors.white,
            )),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              data.seat,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Seats",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish',
                  fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
