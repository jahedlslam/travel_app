import 'package:flutter/material.dart';
import 'package:travel_app/pages/discovery/discovery_screen.dart';

class TopImage extends StatelessWidget {
  const TopImage({
    super.key,
    required this.widget,
  });

  final DiscoveryScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 255,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(widget.data.imageUrl), fit: BoxFit.cover),
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
