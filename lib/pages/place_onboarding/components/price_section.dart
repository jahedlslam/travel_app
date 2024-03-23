import 'package:flutter/material.dart';
import '../../../models/place_detail_model.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({
    super.key,
    required this.data,
  });

  final PlaceDetailModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$${data.price}",
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          width: 50,
          child: Text(
            "per person",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: 'Mulish'),
          ),
        )
      ],
    );
  }
}
