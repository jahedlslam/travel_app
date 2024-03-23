import 'package:flutter/material.dart';
import '../../../models/place_detail_model.dart';

class CountryName extends StatelessWidget {
  const CountryName({
    super.key,
    required this.data,
  });

  final PlaceDetailModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.countryName,
      style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Mulish',
          fontSize: 40,
          fontWeight: FontWeight.bold),
    );
  }
}
