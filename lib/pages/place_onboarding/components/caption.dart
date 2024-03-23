import 'package:flutter/material.dart';
import '../../../models/place_detail_model.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key,
    required this.data,
  });

  final PlaceDetailModel data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: Text(
        data.caption,
        style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: 'Mulish',
            wordSpacing: 1),
      ),
    );
  }
}
