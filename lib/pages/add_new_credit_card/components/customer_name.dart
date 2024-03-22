import 'package:flutter/material.dart';

class CustomerName extends StatelessWidget {
  const CustomerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CARDHOLDER NAME",
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "CAPI CREATIVE",
          style: TextStyle(
              fontFamily: 'KodeMono', color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}
