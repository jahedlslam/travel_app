import 'package:flutter/material.dart';
import '../../../models/placelist_model.dart';
import '../../place_list/place_list.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, bottom: 10),
          child: Text(
            "Waiting for confirmation",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish'),
          ),
        ),
        PlaceList(
          data: placeList[0],
        ),
      ],
    );
  }
}
