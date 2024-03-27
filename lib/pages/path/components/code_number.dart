import 'package:flutter/material.dart';

class CodeNumber extends StatelessWidget {
  const CodeNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Code",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        Text(
          "VJ360",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        )
      ],
    );
  }
}
