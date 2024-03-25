import 'package:flutter/material.dart';
import 'package:travel_app/models/placelist_model.dart';

class SeatsRemaining extends StatefulWidget {
  final PlaceListModel data;
  const SeatsRemaining({super.key, required this.data});

  @override
  State<SeatsRemaining> createState() => _SeatsRemainingState();
}

class _SeatsRemainingState extends State<SeatsRemaining> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 14,
          width: 14,
          child: Image.asset(
            "assets/icons/label.png",
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              widget.data.seat.toString(),
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Seats remaining",
              style: TextStyle(
                  color: Colors.black,
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
