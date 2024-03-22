import 'package:flutter/material.dart';

class CountryAndCategory extends StatelessWidget {
  const CountryAndCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Singapore",
          style: TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 66,
          height: 18,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
              ),
              color: Colors.blue.shade100),
          child: const Center(
            child: Text(
              "Standard",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
