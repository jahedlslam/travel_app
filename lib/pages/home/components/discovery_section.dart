import 'package:flutter/material.dart';
import 'package:travel_app/models/discovery_section_model.dart';

class DiscoverySection extends StatelessWidget {
  final DiscoverySectionModel data;
  const DiscoverySection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 197,
        width: 141,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(data.imageUrl), fit: BoxFit.cover),
            color: Colors.grey),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  data.destinationName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Mulish'),
                ),
                Text(
                  "${data.placeCount}+ Destinations",
                  style: const TextStyle(
                      color: Colors.white, fontSize: 12, fontFamily: 'Mulish'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
