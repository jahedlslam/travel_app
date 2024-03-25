import 'package:flutter/material.dart';
import '../../../models/tirp_list_model.dart';

class TopImage extends StatelessWidget {
  const TopImage({
    super.key,
    required this.data,
  });

  final TripListModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 255,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(data.image), fit: BoxFit.cover),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.1, 0.5],
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
      ),
    );
  }
}
