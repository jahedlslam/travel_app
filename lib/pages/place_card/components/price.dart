import 'package:flutter/material.dart';
import '../../../models/placecard_model.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.data,
  });

  final PlaceCardModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "\$${data.totalmoney}",
          style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish',
              fontSize: 13),
        ),
        Text(
          "\$${data.discountMoney}",
          style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w800,
              fontFamily: 'Mulish',
              fontSize: 18),
        ),
      ],
    );
  }
}
