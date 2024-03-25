import 'package:flutter/material.dart';
import '../../../models/tirp_list_model.dart';

class CountryName extends StatelessWidget {
  const CountryName({
    super.key,
    required this.data,
  });

  final TripListModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.countryName,
      style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Mulish',
          fontSize: 45,
          fontWeight: FontWeight.bold),
    );
  }
}
