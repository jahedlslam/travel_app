import 'package:flutter/material.dart';
import 'package:travel_app/pages/path/components/flight_time_section.dart';
import 'package:travel_app/pages/path/components/thick_container.dart';

class ReturnTime extends StatelessWidget {
  const ReturnTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5.0, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ThickContainer(),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Return time:",
                style: TextStyle(
                    fontFamily: 'Mulish',
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const FlightTimeSection(),
        ],
      ),
    );
  }
}
