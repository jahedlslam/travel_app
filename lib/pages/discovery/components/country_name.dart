import 'package:flutter/material.dart';
import 'package:travel_app/pages/discovery/discovery_screen.dart';

class CountryName extends StatelessWidget {
  const CountryName({
    super.key,
    required this.widget,
  });

  final DiscoveryScreen widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data.destinationName,
      style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Mulish',
          fontSize: 45,
          fontWeight: FontWeight.bold),
    );
  }
}
