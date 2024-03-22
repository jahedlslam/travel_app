import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account security",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 88,
          width: 180,
          child: Text(
            "One more step for your account not to be attacked. Have you installed the authentication method?",
            style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
