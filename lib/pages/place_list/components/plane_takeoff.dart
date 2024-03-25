import 'package:flutter/material.dart';
import '../../../models/placelist_model.dart';

class PlaneTakeoff extends StatelessWidget {
  const PlaneTakeoff({
    super.key,
    required this.data,
  });

  final PlaceListModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 16,
          width: 16,
          child: Image.asset(
            "assets/icons/takeoff-the-plane.png",
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${data.placeName} - ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
              TextSpan(
                text: '${data.month}, ${data.year}',
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
