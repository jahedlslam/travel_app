import 'package:flutter/material.dart';
import '../../../models/placelist_model.dart';
import '../../place_list/place_list.dart';

class LastSection extends StatelessWidget {
  const LastSection({
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
            "History booking",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: PlaceList(
            data: placeList[1],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: PlaceList(
            data: placeList[2],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: PlaceList(
            data: placeList[0],
          ),
        ),
      ],
    );
  }
}
