import 'package:flutter/material.dart';

class VisaRow extends StatelessWidget {
  const VisaRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Visa\nsurcharges\n(If any)",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade600,
                  fontSize: 14),
            ),
          ],
        ),
        const Text(
          "\$0",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        const Text("\$0",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        const Text("\$0",
            style: TextStyle(
                fontFamily: 'Mulish',
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
      ],
    );
  }
}
