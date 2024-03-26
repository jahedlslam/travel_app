import 'package:flutter/material.dart';

class FloatingButtonLabel extends StatelessWidget {
  const FloatingButtonLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "GET START",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ],
    );
  }
}
