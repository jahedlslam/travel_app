import 'package:flutter/material.dart';

class LocationAndDate extends StatelessWidget {
  const LocationAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Marina Bay - ",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          TextSpan(
            text: "May 20,2024",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
