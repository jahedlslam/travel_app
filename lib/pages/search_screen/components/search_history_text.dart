import 'package:flutter/material.dart';

class SearchHistoryText extends StatelessWidget {
  const SearchHistoryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Mulish',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/time.png",
                color: Colors.grey.shade500,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Dubai",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontFamily: 'Mulish'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/time.png",
                color: Colors.grey.shade500,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Singapore",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontFamily: 'Mulish'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/time.png",
                color: Colors.grey.shade500,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Afganistan",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    fontFamily: 'Mulish'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
