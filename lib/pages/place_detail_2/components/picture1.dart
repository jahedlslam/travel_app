import 'package:flutter/material.dart';

class Picture1 extends StatelessWidget {
  final String image;
  const Picture1({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 275,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.1, 0.5],
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.4),
            ],
          ),
        ),
      ),
    );
  }
}
