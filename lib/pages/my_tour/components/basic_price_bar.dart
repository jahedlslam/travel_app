import 'package:flutter/material.dart';
import 'package:travel_app/pages/my_tour/components/table.dart';

class BasicPriceBar extends StatelessWidget {
  const BasicPriceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PriceTable(),
        ],
      ),
    );
  }
}
