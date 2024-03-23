import 'package:flutter/material.dart';
import 'package:travel_app/pages/discovery/discovery_screen.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.widget,
  });

  final DiscoveryScreen widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Text(
        widget.data.desc,
        style: TextStyle(
            color: Colors.grey.shade700, fontSize: 14, fontFamily: 'Mulish'),
      ),
    );
  }
}
