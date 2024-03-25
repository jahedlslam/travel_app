import 'package:flutter/material.dart';

class FloatingButtonLabel extends StatelessWidget {
  const FloatingButtonLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 46,
      width: 310,
      child: Center(
        child: Text(
          "NEXT",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
