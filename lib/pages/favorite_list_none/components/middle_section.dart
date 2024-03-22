import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 166,
          width: 133,
          child: Image.asset("assets/icons/luggage.png"),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "No favorite trip list yet!",
          style:
              TextStyle(color: Colors.grey, fontSize: 18, fontFamily: 'Mulish'),
        ),
      ],
    );
  }
}
