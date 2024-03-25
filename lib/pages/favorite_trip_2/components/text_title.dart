import 'package:flutter/material.dart';
import '../../../models/tirp_list_model.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    super.key,
    required this.data,
  });

  final TripListModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.title,
      style: TextStyle(
          color: Colors.grey.shade700, fontSize: 14, fontFamily: 'Mulish'),
    );
  }
}
