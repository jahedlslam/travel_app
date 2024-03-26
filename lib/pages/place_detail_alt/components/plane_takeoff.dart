import 'package:flutter/material.dart';
import '../../../models/place_detail_model.dart';

class PlaneTakeoff extends StatelessWidget {
  const PlaneTakeoff({
    super.key,
    required this.data,
  });

  final PlaceDetailModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 16,
          width: 16,
          child: Image.asset(
            "assets/icons/takeoff-the-plane.png",
            color: Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Start: ${data.placeName} - ',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              TextSpan(
                text: '${data.month} ${data.date}, ${data.year}',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
